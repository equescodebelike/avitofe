import 'package:freezed_annotation/freezed_annotation.dart';


part 'event_dto.freezed.dart';
part 'event_dto.g.dart';

@freezed
abstract class EventDto with _$EventDto{
  const factory EventDto({
    required int id,
    required int idUser,
    required String name,
    String? city,
    bool? isFinished,
    int? totalCost,
    DateTime? dateOfEvent,
    int? totalNumberEmployee,
    int? hiredNumberEmployee,

  }) = _EventDto;

  factory EventDto.fromJson(Map<String, Object?> json)
  => _$EventDtoFromJson(json);
}