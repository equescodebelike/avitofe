import 'package:decimal/decimal.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'offer.freezed.dart';

@freezed
class Offer with _$Offer {
  const factory Offer({
    required int id,
    required String name,
    required int count,
    required Decimal price,
    String? imageUrl,
    Decimal? oldPrice,
  }) = _Offer;
}