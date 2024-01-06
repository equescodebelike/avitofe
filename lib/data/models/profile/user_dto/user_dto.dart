import 'package:freezed_annotation/freezed_annotation.dart';

import '../admin_info_dto/admin_info_dto.dart';
import '../employee_info_dto/employee_info_dto.dart';
import '../user_info_dto/user_info_dto.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
class UserDto with _$UserDto{
  const factory UserDto({
    required int id,
    required String name,
    required String surname,
    required String patronymic,
    required String email,
    required String username,
    required String password,
    required String role,
    required String phoneNumber,
    required EmployeeInfoDto employeeInfoDto,
    required UserInfoDto userInfoDto,
    required AdminInfoDto adminInfoDto,
  }) = _UserDto;

  factory UserDto.fromJson(Map<String, Object?> json)
  => _$UserDtoFromJson(json);
}