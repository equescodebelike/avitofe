import 'dart:async';

import 'package:elementary/elementary.dart';
import 'package:flutter/foundation.dart';
import 'package:test_project/data/manager/cart/cart_manager_interface.dart';
import 'package:test_project/domain/offer/offer.dart';

class CartPageModel extends ElementaryModel {
  final ICartManager _cartManager;
  late final StreamSubscription<List<Offer>> _cartSubscription;
  final _offerList = ValueNotifier<List<Offer>?>(null);

  CartPageModel(ErrorHandler errorHandler, this._cartManager)
      : super(errorHandler: errorHandler);

  @override
  void init() {
    super.init();
    _cartSubscription =
        _cartManager.cartSubscription.listen(_cartListen);
  }

  @override
  void dispose() {
    super.dispose();
    _cartSubscription.cancel();
  }

  void _cartListen(List<Offer> list) {
    _offerList.value = list;
  }

  void bulkAdd(int offerId, int count) {
    _cartManager.bulkAdd(offerId, count);
  }

  void checkout() {
    _cartManager.checkout();
  }

  ValueListenable<List<Offer>?> get offerList => _offerList;
}
