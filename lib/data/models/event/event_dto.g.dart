// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EventDtoImpl _$$EventDtoImplFromJson(Map<String, dynamic> json) =>
    _$EventDtoImpl(
      id: json['id'] as int,
      idUser: json['idUser'] as int,
      name: json['name'] as String,
      city: json['city'] as String?,
      isFinished: json['isFinished'] as bool?,
      totalCost: json['totalCost'] as int?,
      dateOfEvent: json['dateOfEvent'] == null
          ? null
          : DateTime.parse(json['dateOfEvent'] as String),
      totalNumberEmployee: json['totalNumberEmployee'] as int?,
      hiredNumberEmployee: json['hiredNumberEmployee'] as int?,
    );

Map<String, dynamic> _$$EventDtoImplToJson(_$EventDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'idUser': instance.idUser,
      'name': instance.name,
      'city': instance.city,
      'isFinished': instance.isFinished,
      'totalCost': instance.totalCost,
      'dateOfEvent': instance.dateOfEvent?.toIso8601String(),
      'totalNumberEmployee': instance.totalNumberEmployee,
      'hiredNumberEmployee': instance.hiredNumberEmployee,
    };
