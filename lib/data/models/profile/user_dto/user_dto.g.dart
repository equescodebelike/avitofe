// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserDtoImpl _$$UserDtoImplFromJson(Map<String, dynamic> json) =>
    _$UserDtoImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      surname: json['surname'] as String,
      patronymic: json['patronymic'] as String,
      email: json['email'] as String,
      username: json['username'] as String,
      password: json['password'] as String,
      role: json['role'] as String,
      phoneNumber: json['phoneNumber'] as String,
      employeeInfoDto: EmployeeInfoDto.fromJson(
          json['employeeInfoDto'] as Map<String, dynamic>),
      userInfoDto:
          UserInfoDto.fromJson(json['userInfoDto'] as Map<String, dynamic>),
      adminInfoDto:
          AdminInfoDto.fromJson(json['adminInfoDto'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserDtoImplToJson(_$UserDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'surname': instance.surname,
      'patronymic': instance.patronymic,
      'email': instance.email,
      'username': instance.username,
      'password': instance.password,
      'role': instance.role,
      'phoneNumber': instance.phoneNumber,
      'employeeInfoDto': instance.employeeInfoDto,
      'userInfoDto': instance.userInfoDto,
      'adminInfoDto': instance.adminInfoDto,
    };
