// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_info_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AdminInfoDtoImpl _$$AdminInfoDtoImplFromJson(Map<String, dynamic> json) =>
    _$AdminInfoDtoImpl(
      id: json['id'] as int,
      dateOfRegister: DateTime.parse(json['dateOfRegister'] as String),
    );

Map<String, dynamic> _$$AdminInfoDtoImplToJson(_$AdminInfoDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'dateOfRegister': instance.dateOfRegister.toIso8601String(),
    };
