import 'package:freezed_annotation/freezed_annotation.dart';

import '../action_dto/action_dto.dart';


part 'event_detail_dto.freezed.dart';
part 'event_detail_dto.g.dart';

@freezed
class EventDetailDto with _$EventDetailDto{
  const factory EventDetailDto({
    required int id,
    required int idUser,
    required String name,
    String? city,
    bool? isFinished,
    int? totalCost,
    DateTime? dateOfEvent,
    int? totalNumberEmployee,
    int? hiredNumberEmployee,
    @Default([]) List<ActionDto> actionDTO,

  }) = _EventDetailDto;

  factory EventDetailDto.fromJson(Map<String, Object?> json)
  => _$EventDetailDtoFromJson(json);
}