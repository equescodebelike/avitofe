import 'package:decimal/decimal.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'offer_dto.freezed.dart';
part 'offer_dto.g.dart';

@freezed
class OfferDto with _$OfferDto {
  const factory OfferDto({
    required int id,
    required String name,
    required int count,
    required Decimal price,
    String? imageUrl,
    Decimal? oldPrice,
  }) = _OfferDto;

  factory OfferDto.fromJson(Map<String, Object?> json) =>
      _$OfferDtoFromJson(json);
}