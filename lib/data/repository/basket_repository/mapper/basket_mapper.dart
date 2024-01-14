import 'package:test_project/data/dto/offer/offer_dto.dart';
import 'package:test_project/domain/offer/offer.dart';

Offer mapBasket(OfferDto dto) {
  return Offer(
    id: dto.offerId,
    message: dto.message,
    count: dto.count,
  );
}
