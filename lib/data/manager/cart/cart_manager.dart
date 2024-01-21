import 'dart:async';

import 'package:rxdart/rxdart.dart';
import 'package:test_project/data/repository/cart_repository/cart_repository_interface.dart';
import 'package:test_project/domain/offer/offer.dart';
import 'package:test_project/utils/lifecycle_component.dart';

import 'cart_manager_interface.dart';

class CartManager  with LifecycleComponent implements ICartManager{
  final ICartRepository _cartRepository;

  CartManager(this._cartRepository);
  late final BehaviorSubject<List<Offer>> _cartStream = BehaviorSubject();


  @override
  void init() {
    super.init();
    checkout();
  }

  @override
  void dispose() {
    super.dispose();
    _cartStream.close();
  }


  @override
  Stream<List<Offer>> get cartSubscription => _cartStream.stream;

  @override
  Future<void> bulkAdd(offerId, count) async {
    final prewList = _cartStream.value..removeWhere((element) => element.count<=0);
    _cartStream.add(prewList);
    final newList =  await _cartRepository.bulkAdd(offerId, count);
    _cartStream.add(newList);
  }

  @override
  Future<void> checkout() async {
    final newList =  await _cartRepository.checkout();
    _cartStream.add(newList);
  }

}