import 'package:freezed_annotation/freezed_annotation.dart';

part 'employee_info_dto.freezed.dart';
part 'employee_info_dto.g.dart';

@freezed
class EmployeeInfoDto with _$EmployeeInfoDto{
  const factory EmployeeInfoDto({
    required int id,
    required DateTime dateOfRegister,
    required String city,
    required int totalFinishedServices,
    required String description,
    required int age,
  }) = _EmployeeInfoDto;

  factory EmployeeInfoDto.fromJson(Map<String, Object?> json)
  => _$EmployeeInfoDtoFromJson(json);
}