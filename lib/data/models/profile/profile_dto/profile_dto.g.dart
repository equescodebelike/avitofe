// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileDtoImpl _$$ProfileDtoImplFromJson(Map<String, dynamic> json) =>
    _$ProfileDtoImpl(
      userDto: UserDto.fromJson(json['userDto'] as Map<String, dynamic>),
      actionDTO: ActionDto.fromJson(json['actionDTO'] as Map<String, dynamic>),
      numberFinishedEvent: json['numberFinishedEvent'] as int,
      numberCompletedOffers: json['numberCompletedOffers'] as int,
      rating: json['rating'] as int,
      numberFeefback: json['numberFeefback'] as int,
    );

Map<String, dynamic> _$$ProfileDtoImplToJson(_$ProfileDtoImpl instance) =>
    <String, dynamic>{
      'userDto': instance.userDto,
      'actionDTO': instance.actionDTO,
      'numberFinishedEvent': instance.numberFinishedEvent,
      'numberCompletedOffers': instance.numberCompletedOffers,
      'rating': instance.rating,
      'numberFeefback': instance.numberFeefback,
    };
