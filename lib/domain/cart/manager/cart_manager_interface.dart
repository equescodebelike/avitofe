import 'dart:async';
import 'package:test_project/domain/cart/models/offer/offer.dart';
import 'package:test_project/utils/lifecycle_component.dart';

abstract class ICartManager implements ILifecycleComponent{
  Stream<List<Offer>> get cartSubscription;

  Future<void> checkout();

  Future<void> bulkAdd(int odderId, int count);
}
