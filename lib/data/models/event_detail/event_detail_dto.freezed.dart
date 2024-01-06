// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_detail_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EventDetailDto _$EventDetailDtoFromJson(Map<String, dynamic> json) {
  return _EventDetailDto.fromJson(json);
}

/// @nodoc
mixin _$EventDetailDto {
  int get id => throw _privateConstructorUsedError;
  int get idUser => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  bool? get isFinished => throw _privateConstructorUsedError;
  int? get totalCost => throw _privateConstructorUsedError;
  DateTime? get dateOfEvent => throw _privateConstructorUsedError;
  int? get totalNumberEmployee => throw _privateConstructorUsedError;
  int? get hiredNumberEmployee => throw _privateConstructorUsedError;
  List<ActionDto> get actionDTO => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventDetailDtoCopyWith<EventDetailDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventDetailDtoCopyWith<$Res> {
  factory $EventDetailDtoCopyWith(
          EventDetailDto value, $Res Function(EventDetailDto) then) =
      _$EventDetailDtoCopyWithImpl<$Res, EventDetailDto>;
  @useResult
  $Res call(
      {int id,
      int idUser,
      String name,
      String? city,
      bool? isFinished,
      int? totalCost,
      DateTime? dateOfEvent,
      int? totalNumberEmployee,
      int? hiredNumberEmployee,
      List<ActionDto> actionDTO});
}

/// @nodoc
class _$EventDetailDtoCopyWithImpl<$Res, $Val extends EventDetailDto>
    implements $EventDetailDtoCopyWith<$Res> {
  _$EventDetailDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? idUser = null,
    Object? name = null,
    Object? city = freezed,
    Object? isFinished = freezed,
    Object? totalCost = freezed,
    Object? dateOfEvent = freezed,
    Object? totalNumberEmployee = freezed,
    Object? hiredNumberEmployee = freezed,
    Object? actionDTO = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      idUser: null == idUser
          ? _value.idUser
          : idUser // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      isFinished: freezed == isFinished
          ? _value.isFinished
          : isFinished // ignore: cast_nullable_to_non_nullable
              as bool?,
      totalCost: freezed == totalCost
          ? _value.totalCost
          : totalCost // ignore: cast_nullable_to_non_nullable
              as int?,
      dateOfEvent: freezed == dateOfEvent
          ? _value.dateOfEvent
          : dateOfEvent // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      totalNumberEmployee: freezed == totalNumberEmployee
          ? _value.totalNumberEmployee
          : totalNumberEmployee // ignore: cast_nullable_to_non_nullable
              as int?,
      hiredNumberEmployee: freezed == hiredNumberEmployee
          ? _value.hiredNumberEmployee
          : hiredNumberEmployee // ignore: cast_nullable_to_non_nullable
              as int?,
      actionDTO: null == actionDTO
          ? _value.actionDTO
          : actionDTO // ignore: cast_nullable_to_non_nullable
              as List<ActionDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EventDetailDtoImplCopyWith<$Res>
    implements $EventDetailDtoCopyWith<$Res> {
  factory _$$EventDetailDtoImplCopyWith(_$EventDetailDtoImpl value,
          $Res Function(_$EventDetailDtoImpl) then) =
      __$$EventDetailDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int idUser,
      String name,
      String? city,
      bool? isFinished,
      int? totalCost,
      DateTime? dateOfEvent,
      int? totalNumberEmployee,
      int? hiredNumberEmployee,
      List<ActionDto> actionDTO});
}

/// @nodoc
class __$$EventDetailDtoImplCopyWithImpl<$Res>
    extends _$EventDetailDtoCopyWithImpl<$Res, _$EventDetailDtoImpl>
    implements _$$EventDetailDtoImplCopyWith<$Res> {
  __$$EventDetailDtoImplCopyWithImpl(
      _$EventDetailDtoImpl _value, $Res Function(_$EventDetailDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? idUser = null,
    Object? name = null,
    Object? city = freezed,
    Object? isFinished = freezed,
    Object? totalCost = freezed,
    Object? dateOfEvent = freezed,
    Object? totalNumberEmployee = freezed,
    Object? hiredNumberEmployee = freezed,
    Object? actionDTO = null,
  }) {
    return _then(_$EventDetailDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      idUser: null == idUser
          ? _value.idUser
          : idUser // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      isFinished: freezed == isFinished
          ? _value.isFinished
          : isFinished // ignore: cast_nullable_to_non_nullable
              as bool?,
      totalCost: freezed == totalCost
          ? _value.totalCost
          : totalCost // ignore: cast_nullable_to_non_nullable
              as int?,
      dateOfEvent: freezed == dateOfEvent
          ? _value.dateOfEvent
          : dateOfEvent // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      totalNumberEmployee: freezed == totalNumberEmployee
          ? _value.totalNumberEmployee
          : totalNumberEmployee // ignore: cast_nullable_to_non_nullable
              as int?,
      hiredNumberEmployee: freezed == hiredNumberEmployee
          ? _value.hiredNumberEmployee
          : hiredNumberEmployee // ignore: cast_nullable_to_non_nullable
              as int?,
      actionDTO: null == actionDTO
          ? _value._actionDTO
          : actionDTO // ignore: cast_nullable_to_non_nullable
              as List<ActionDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EventDetailDtoImpl implements _EventDetailDto {
  const _$EventDetailDtoImpl(
      {required this.id,
      required this.idUser,
      required this.name,
      this.city,
      this.isFinished,
      this.totalCost,
      this.dateOfEvent,
      this.totalNumberEmployee,
      this.hiredNumberEmployee,
      final List<ActionDto> actionDTO = const []})
      : _actionDTO = actionDTO;

  factory _$EventDetailDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventDetailDtoImplFromJson(json);

  @override
  final int id;
  @override
  final int idUser;
  @override
  final String name;
  @override
  final String? city;
  @override
  final bool? isFinished;
  @override
  final int? totalCost;
  @override
  final DateTime? dateOfEvent;
  @override
  final int? totalNumberEmployee;
  @override
  final int? hiredNumberEmployee;
  final List<ActionDto> _actionDTO;
  @override
  @JsonKey()
  List<ActionDto> get actionDTO {
    if (_actionDTO is EqualUnmodifiableListView) return _actionDTO;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_actionDTO);
  }

  @override
  String toString() {
    return 'EventDetailDto(id: $id, idUser: $idUser, name: $name, city: $city, isFinished: $isFinished, totalCost: $totalCost, dateOfEvent: $dateOfEvent, totalNumberEmployee: $totalNumberEmployee, hiredNumberEmployee: $hiredNumberEmployee, actionDTO: $actionDTO)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventDetailDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.idUser, idUser) || other.idUser == idUser) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.isFinished, isFinished) ||
                other.isFinished == isFinished) &&
            (identical(other.totalCost, totalCost) ||
                other.totalCost == totalCost) &&
            (identical(other.dateOfEvent, dateOfEvent) ||
                other.dateOfEvent == dateOfEvent) &&
            (identical(other.totalNumberEmployee, totalNumberEmployee) ||
                other.totalNumberEmployee == totalNumberEmployee) &&
            (identical(other.hiredNumberEmployee, hiredNumberEmployee) ||
                other.hiredNumberEmployee == hiredNumberEmployee) &&
            const DeepCollectionEquality()
                .equals(other._actionDTO, _actionDTO));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      idUser,
      name,
      city,
      isFinished,
      totalCost,
      dateOfEvent,
      totalNumberEmployee,
      hiredNumberEmployee,
      const DeepCollectionEquality().hash(_actionDTO));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventDetailDtoImplCopyWith<_$EventDetailDtoImpl> get copyWith =>
      __$$EventDetailDtoImplCopyWithImpl<_$EventDetailDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventDetailDtoImplToJson(
      this,
    );
  }
}

abstract class _EventDetailDto implements EventDetailDto {
  const factory _EventDetailDto(
      {required final int id,
      required final int idUser,
      required final String name,
      final String? city,
      final bool? isFinished,
      final int? totalCost,
      final DateTime? dateOfEvent,
      final int? totalNumberEmployee,
      final int? hiredNumberEmployee,
      final List<ActionDto> actionDTO}) = _$EventDetailDtoImpl;

  factory _EventDetailDto.fromJson(Map<String, dynamic> json) =
      _$EventDetailDtoImpl.fromJson;

  @override
  int get id;
  @override
  int get idUser;
  @override
  String get name;
  @override
  String? get city;
  @override
  bool? get isFinished;
  @override
  int? get totalCost;
  @override
  DateTime? get dateOfEvent;
  @override
  int? get totalNumberEmployee;
  @override
  int? get hiredNumberEmployee;
  @override
  List<ActionDto> get actionDTO;
  @override
  @JsonKey(ignore: true)
  _$$EventDetailDtoImplCopyWith<_$EventDetailDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
