// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserInfoDtoImpl _$$UserInfoDtoImplFromJson(Map<String, dynamic> json) =>
    _$UserInfoDtoImpl(
      id: json['id'] as int,
      sex: json['sex'] as bool,
      birthday: DateTime.parse(json['birthday'] as String),
      isVerified: json['isVerified'] as bool,
      dateOfRegister: DateTime.parse(json['dateOfRegister'] as String),
    );

Map<String, dynamic> _$$UserInfoDtoImplToJson(_$UserInfoDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sex': instance.sex,
      'birthday': instance.birthday.toIso8601String(),
      'isVerified': instance.isVerified,
      'dateOfRegister': instance.dateOfRegister.toIso8601String(),
    };
