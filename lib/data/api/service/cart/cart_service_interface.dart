import 'package:test_project/data/dto/offer/offer_dto.dart';

abstract class ICartService{
  Future<List<OfferDto>> checkout();
  Future<List<OfferDto>> bulkAdd(int offerId, int count);

}