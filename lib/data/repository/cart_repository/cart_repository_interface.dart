import 'package:test_project/domain/offer/offer.dart';

abstract class ICartRepository{
  Future<List<Offer>> checkout();
  Future<List<Offer>> bulkAdd(int offerId, count);

}