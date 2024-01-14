import 'dart:async';

import 'package:elementary/elementary.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:test_project/data/manager/basket/basket_manager_interface.dart';
import 'package:test_project/domain/offer/offer.dart';

class CartPageModel extends ElementaryModel {
  final IBasketManager _basketManager;
  late final StreamSubscription<List<Offer>> _basketSubscription;
  final _offerList = ValueNotifier<List<Offer>?>(null);

  CartPageModel(ErrorHandler errorHandler, this._basketManager)
      : super(errorHandler: errorHandler);

  @override
  void init() {
    super.init();
    _basketSubscription =
        _basketManager.basketSubscription.listen(_basketListen);
  }

  @override
  void dispose() {
    super.dispose();
    _basketSubscription.cancel();
  }

  void _basketListen(List<Offer> list) {
    _offerList.value = list;
  }

  void bulkAdd(int offerId, int count) {
    _basketManager.bulkAdd(offerId, count);
  }

  void checkout() {
    _basketManager.checkout();
  }

  ValueListenable<List<Offer>?> get offerList => _offerList;
}
