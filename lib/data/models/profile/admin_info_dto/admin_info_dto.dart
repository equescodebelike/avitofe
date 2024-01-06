import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_info_dto.freezed.dart';
part 'admin_info_dto.g.dart';

@freezed
class AdminInfoDto with _$AdminInfoDto{
  const factory AdminInfoDto({
    required int id,
    required DateTime dateOfRegister,
  }) = _AdminInfoDto;

  factory AdminInfoDto.fromJson(Map<String, Object?> json)
  => _$AdminInfoDtoFromJson(json);
}