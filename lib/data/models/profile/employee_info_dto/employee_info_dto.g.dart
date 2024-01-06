// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee_info_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EmployeeInfoDtoImpl _$$EmployeeInfoDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$EmployeeInfoDtoImpl(
      id: json['id'] as int,
      dateOfRegister: DateTime.parse(json['dateOfRegister'] as String),
      city: json['city'] as String,
      totalFinishedServices: json['totalFinishedServices'] as int,
      description: json['description'] as String,
      age: json['age'] as int,
    );

Map<String, dynamic> _$$EmployeeInfoDtoImplToJson(
        _$EmployeeInfoDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'dateOfRegister': instance.dateOfRegister.toIso8601String(),
      'city': instance.city,
      'totalFinishedServices': instance.totalFinishedServices,
      'description': instance.description,
      'age': instance.age,
    };
