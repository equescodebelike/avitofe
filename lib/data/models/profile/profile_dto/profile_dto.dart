import 'package:em_mobui/data/models/action_dto/action_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../user_dto/user_dto.dart';

part 'profile_dto.freezed.dart';
part 'profile_dto.g.dart';

@freezed
class ProfileDto with _$ProfileDto{
  const factory ProfileDto({
    required UserDto userDto,
    required ActionDto actionDTO,
    required int numberFinishedEvent,
    required int numberCompletedOffers,
    required int rating,
    required int numberFeefback,
  }) = _ProfileDto;

  factory ProfileDto.fromJson(Map<String, Object?> json)
  => _$ProfileDtoFromJson(json);
}