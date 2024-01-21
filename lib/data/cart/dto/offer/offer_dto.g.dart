// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offer_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OfferDtoImpl _$$OfferDtoImplFromJson(Map<String, dynamic> json) =>
    _$OfferDtoImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      count: json['count'] as int,
      price: Decimal.fromJson(json['price'] as String),
      imageUrl: json['imageUrl'] as String?,
      oldPrice: json['oldPrice'] == null
          ? null
          : Decimal.fromJson(json['oldPrice'] as String),
    );

Map<String, dynamic> _$$OfferDtoImplToJson(_$OfferDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'count': instance.count,
      'price': instance.price,
      'imageUrl': instance.imageUrl,
      'oldPrice': instance.oldPrice,
    };
