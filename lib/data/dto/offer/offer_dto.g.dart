// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offer_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OfferDtoImpl _$$OfferDtoImplFromJson(Map<String, dynamic> json) =>
    _$OfferDtoImpl(
      offerId: json['offerId'] as int,
      count: json['count'] as int,
      message: json['message'] as String,
    );

Map<String, dynamic> _$$OfferDtoImplToJson(_$OfferDtoImpl instance) =>
    <String, dynamic>{
      'offerId': instance.offerId,
      'count': instance.count,
      'message': instance.message,
    };
