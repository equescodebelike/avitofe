import 'dart:async';

import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/foundation.dart';
import 'package:test_project/data/manager/cart/cart_manager_interface.dart';
import 'package:test_project/domain/offer/offer.dart';

class CartPageModel extends ElementaryModel {
  final ICartManager _cartManager;
  late final StreamSubscription<List<Offer>> _cartSubscription;
  final _offerList = EntityStateNotifier<List<Offer>>();

  CartPageModel(ErrorHandler errorHandler, this._cartManager)
      : super(errorHandler: errorHandler);

  @override
  void init() {
    super.init();
    _offerList.loading([]);
    _cartSubscription = _cartManager.cartSubscription.listen(_cartListen);
  }

  @override
  void dispose() {
    super.dispose();
    _cartSubscription.cancel();
  }

  void _cartListen(List<Offer> list) {
    _offerList.content(list);
  }

  void checkout() {
    _cartManager.checkout();
  }

  ValueListenable<EntityState<List<Offer>>> get offerList => _offerList;
}
