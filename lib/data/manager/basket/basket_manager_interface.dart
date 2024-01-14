import 'dart:async';
import 'package:test_project/domain/offer/offer.dart';
import 'package:test_project/utils/lifecycle_component.dart';

abstract class IBasketManager implements ILifecycleComponent{
  Stream<List<Offer>> get basketSubscription;

  Future<void> checkout();

  Future<void> bulkAdd(int odderId, int count);
}
