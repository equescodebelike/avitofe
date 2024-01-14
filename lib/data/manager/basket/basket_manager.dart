import 'dart:async';

import 'package:rxdart/rxdart.dart';
import 'package:test_project/data/repository/basket_repository/basket_repository_interface.dart';
import 'package:test_project/domain/offer/offer.dart';
import 'package:test_project/utils/lifecycle_component.dart';

import 'basket_manager_interface.dart';

class BasketManager  with LifecycleComponent implements IBasketManager{
  final IBasketRepository _basketRepository;

  BasketManager(this._basketRepository);
  late final BehaviorSubject<List<Offer>> _basketStream = BehaviorSubject();


  @override
  void init() {
    super.init();
    checkout();
  }

  @override
  void dispose() {
    super.dispose();
    _basketStream.close();
  }


  @override
  Stream<List<Offer>> get basketSubscription => _basketStream.stream;

  @override
  Future<void> bulkAdd(offerId, count) async {
    final newList =  await _basketRepository.bulkAdd(offerId, count);
    _basketStream.add(newList);
  }

  @override
  Future<void> checkout() async {
    final newList =  await _basketRepository.checkout();
    _basketStream.add(newList);
  }

}