import 'package:freezed_annotation/freezed_annotation.dart';

part 'action_dto.freezed.dart';
part 'action_dto.g.dart';

@freezed
class ActionDto with _$ActionDto{
  const factory ActionDto({
    required int id,
    required int idEvent,
    required String name,
    required int cost,
    required int eventDayNumber,
    required DateTime begginingTime,
    required String duration,
    required String place,
    required int totalNumberEmployee,
    required int hiredNumberEmployee,
  }) = _ActionDto;

  factory ActionDto.fromJson(Map<String, Object?> json)
  => _$ActionDtoFromJson(json);
}