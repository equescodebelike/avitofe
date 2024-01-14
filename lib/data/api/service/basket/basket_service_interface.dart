import 'package:test_project/data/dto/offer/offer_dto.dart';

abstract class IBasketService{
  Future<List<OfferDto>> checkout();
  Future<List<OfferDto>> bulkAdd(int offerId, int count);

}