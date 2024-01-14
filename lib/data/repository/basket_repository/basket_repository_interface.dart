import 'package:test_project/domain/offer/offer.dart';

abstract class IBasketRepository{
  Future<List<Offer>> checkout();
  Future<List<Offer>> bulkAdd(int offerId, count);

}