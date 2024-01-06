import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_info_dto.freezed.dart';
part 'user_info_dto.g.dart';

@freezed
class UserInfoDto with _$UserInfoDto{
  const factory UserInfoDto({
    required int id,
    required bool sex,
    required DateTime birthday,
    required bool isVerified,
    required DateTime dateOfRegister,
  }) = _UserInfoDto;

  factory UserInfoDto.fromJson(Map<String, Object?> json)
  => _$UserInfoDtoFromJson(json);
}