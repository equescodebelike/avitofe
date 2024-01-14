import 'package:test_project/data/dto/offer/offer_dto.dart';
import 'package:test_project/domain/offer/offer.dart';

Offer mapCart(OfferDto dto) {
  return Offer(
    id: dto.id,
    name: dto.name,
    count: dto.count,
    price: dto.price,
    oldPrice: dto.oldPrice,
    imageUrl: dto.imageUrl,
  );
}