// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProfileDto _$ProfileDtoFromJson(Map<String, dynamic> json) {
  return _ProfileDto.fromJson(json);
}

/// @nodoc
mixin _$ProfileDto {
  UserDto get userDto => throw _privateConstructorUsedError;
  ActionDto get actionDTO => throw _privateConstructorUsedError;
  int get numberFinishedEvent => throw _privateConstructorUsedError;
  int get numberCompletedOffers => throw _privateConstructorUsedError;
  int get rating => throw _privateConstructorUsedError;
  int get numberFeefback => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileDtoCopyWith<ProfileDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileDtoCopyWith<$Res> {
  factory $ProfileDtoCopyWith(
          ProfileDto value, $Res Function(ProfileDto) then) =
      _$ProfileDtoCopyWithImpl<$Res, ProfileDto>;
  @useResult
  $Res call(
      {UserDto userDto,
      ActionDto actionDTO,
      int numberFinishedEvent,
      int numberCompletedOffers,
      int rating,
      int numberFeefback});

  $UserDtoCopyWith<$Res> get userDto;
  $ActionDtoCopyWith<$Res> get actionDTO;
}

/// @nodoc
class _$ProfileDtoCopyWithImpl<$Res, $Val extends ProfileDto>
    implements $ProfileDtoCopyWith<$Res> {
  _$ProfileDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userDto = null,
    Object? actionDTO = null,
    Object? numberFinishedEvent = null,
    Object? numberCompletedOffers = null,
    Object? rating = null,
    Object? numberFeefback = null,
  }) {
    return _then(_value.copyWith(
      userDto: null == userDto
          ? _value.userDto
          : userDto // ignore: cast_nullable_to_non_nullable
              as UserDto,
      actionDTO: null == actionDTO
          ? _value.actionDTO
          : actionDTO // ignore: cast_nullable_to_non_nullable
              as ActionDto,
      numberFinishedEvent: null == numberFinishedEvent
          ? _value.numberFinishedEvent
          : numberFinishedEvent // ignore: cast_nullable_to_non_nullable
              as int,
      numberCompletedOffers: null == numberCompletedOffers
          ? _value.numberCompletedOffers
          : numberCompletedOffers // ignore: cast_nullable_to_non_nullable
              as int,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      numberFeefback: null == numberFeefback
          ? _value.numberFeefback
          : numberFeefback // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserDtoCopyWith<$Res> get userDto {
    return $UserDtoCopyWith<$Res>(_value.userDto, (value) {
      return _then(_value.copyWith(userDto: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ActionDtoCopyWith<$Res> get actionDTO {
    return $ActionDtoCopyWith<$Res>(_value.actionDTO, (value) {
      return _then(_value.copyWith(actionDTO: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProfileDtoImplCopyWith<$Res>
    implements $ProfileDtoCopyWith<$Res> {
  factory _$$ProfileDtoImplCopyWith(
          _$ProfileDtoImpl value, $Res Function(_$ProfileDtoImpl) then) =
      __$$ProfileDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UserDto userDto,
      ActionDto actionDTO,
      int numberFinishedEvent,
      int numberCompletedOffers,
      int rating,
      int numberFeefback});

  @override
  $UserDtoCopyWith<$Res> get userDto;
  @override
  $ActionDtoCopyWith<$Res> get actionDTO;
}

/// @nodoc
class __$$ProfileDtoImplCopyWithImpl<$Res>
    extends _$ProfileDtoCopyWithImpl<$Res, _$ProfileDtoImpl>
    implements _$$ProfileDtoImplCopyWith<$Res> {
  __$$ProfileDtoImplCopyWithImpl(
      _$ProfileDtoImpl _value, $Res Function(_$ProfileDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userDto = null,
    Object? actionDTO = null,
    Object? numberFinishedEvent = null,
    Object? numberCompletedOffers = null,
    Object? rating = null,
    Object? numberFeefback = null,
  }) {
    return _then(_$ProfileDtoImpl(
      userDto: null == userDto
          ? _value.userDto
          : userDto // ignore: cast_nullable_to_non_nullable
              as UserDto,
      actionDTO: null == actionDTO
          ? _value.actionDTO
          : actionDTO // ignore: cast_nullable_to_non_nullable
              as ActionDto,
      numberFinishedEvent: null == numberFinishedEvent
          ? _value.numberFinishedEvent
          : numberFinishedEvent // ignore: cast_nullable_to_non_nullable
              as int,
      numberCompletedOffers: null == numberCompletedOffers
          ? _value.numberCompletedOffers
          : numberCompletedOffers // ignore: cast_nullable_to_non_nullable
              as int,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      numberFeefback: null == numberFeefback
          ? _value.numberFeefback
          : numberFeefback // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileDtoImpl implements _ProfileDto {
  const _$ProfileDtoImpl(
      {required this.userDto,
      required this.actionDTO,
      required this.numberFinishedEvent,
      required this.numberCompletedOffers,
      required this.rating,
      required this.numberFeefback});

  factory _$ProfileDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileDtoImplFromJson(json);

  @override
  final UserDto userDto;
  @override
  final ActionDto actionDTO;
  @override
  final int numberFinishedEvent;
  @override
  final int numberCompletedOffers;
  @override
  final int rating;
  @override
  final int numberFeefback;

  @override
  String toString() {
    return 'ProfileDto(userDto: $userDto, actionDTO: $actionDTO, numberFinishedEvent: $numberFinishedEvent, numberCompletedOffers: $numberCompletedOffers, rating: $rating, numberFeefback: $numberFeefback)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileDtoImpl &&
            (identical(other.userDto, userDto) || other.userDto == userDto) &&
            (identical(other.actionDTO, actionDTO) ||
                other.actionDTO == actionDTO) &&
            (identical(other.numberFinishedEvent, numberFinishedEvent) ||
                other.numberFinishedEvent == numberFinishedEvent) &&
            (identical(other.numberCompletedOffers, numberCompletedOffers) ||
                other.numberCompletedOffers == numberCompletedOffers) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.numberFeefback, numberFeefback) ||
                other.numberFeefback == numberFeefback));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userDto, actionDTO,
      numberFinishedEvent, numberCompletedOffers, rating, numberFeefback);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileDtoImplCopyWith<_$ProfileDtoImpl> get copyWith =>
      __$$ProfileDtoImplCopyWithImpl<_$ProfileDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileDtoImplToJson(
      this,
    );
  }
}

abstract class _ProfileDto implements ProfileDto {
  const factory _ProfileDto(
      {required final UserDto userDto,
      required final ActionDto actionDTO,
      required final int numberFinishedEvent,
      required final int numberCompletedOffers,
      required final int rating,
      required final int numberFeefback}) = _$ProfileDtoImpl;

  factory _ProfileDto.fromJson(Map<String, dynamic> json) =
      _$ProfileDtoImpl.fromJson;

  @override
  UserDto get userDto;
  @override
  ActionDto get actionDTO;
  @override
  int get numberFinishedEvent;
  @override
  int get numberCompletedOffers;
  @override
  int get rating;
  @override
  int get numberFeefback;
  @override
  @JsonKey(ignore: true)
  _$$ProfileDtoImplCopyWith<_$ProfileDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
