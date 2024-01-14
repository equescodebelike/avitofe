import 'package:freezed_annotation/freezed_annotation.dart';

part 'offer_dto.freezed.dart';
part 'offer_dto.g.dart';

@freezed
class OfferDto with _$OfferDto {
  const factory OfferDto({
    required int offerId,
    required int count,
    required String message
  }) = _OfferDto;

  factory OfferDto.fromJson(Map<String, Object?> json) =>
      _$OfferDtoFromJson(json);
}