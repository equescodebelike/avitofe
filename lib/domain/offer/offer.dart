import 'package:freezed_annotation/freezed_annotation.dart';

part 'offer.freezed.dart';

@freezed
class Offer with _$Offer {
  const factory Offer({
    required int id,
    required String message,
    required int count,
  }) = _Offer;
}