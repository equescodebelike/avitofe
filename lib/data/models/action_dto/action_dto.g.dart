// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'action_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ActionDtoImpl _$$ActionDtoImplFromJson(Map<String, dynamic> json) =>
    _$ActionDtoImpl(
      id: json['id'] as int,
      idEvent: json['idEvent'] as int,
      name: json['name'] as String,
      cost: json['cost'] as int,
      eventDayNumber: json['eventDayNumber'] as int,
      begginingTime: DateTime.parse(json['begginingTime'] as String),
      duration: json['duration'] as String,
      place: json['place'] as String,
      totalNumberEmployee: json['totalNumberEmployee'] as int,
      hiredNumberEmployee: json['hiredNumberEmployee'] as int,
    );

Map<String, dynamic> _$$ActionDtoImplToJson(_$ActionDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'idEvent': instance.idEvent,
      'name': instance.name,
      'cost': instance.cost,
      'eventDayNumber': instance.eventDayNumber,
      'begginingTime': instance.begginingTime.toIso8601String(),
      'duration': instance.duration,
      'place': instance.place,
      'totalNumberEmployee': instance.totalNumberEmployee,
      'hiredNumberEmployee': instance.hiredNumberEmployee,
    };
