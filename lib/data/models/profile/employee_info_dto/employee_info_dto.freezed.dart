// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employee_info_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EmployeeInfoDto _$EmployeeInfoDtoFromJson(Map<String, dynamic> json) {
  return _EmployeeInfoDto.fromJson(json);
}

/// @nodoc
mixin _$EmployeeInfoDto {
  int get id => throw _privateConstructorUsedError;
  DateTime get dateOfRegister => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  int get totalFinishedServices => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get age => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmployeeInfoDtoCopyWith<EmployeeInfoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeInfoDtoCopyWith<$Res> {
  factory $EmployeeInfoDtoCopyWith(
          EmployeeInfoDto value, $Res Function(EmployeeInfoDto) then) =
      _$EmployeeInfoDtoCopyWithImpl<$Res, EmployeeInfoDto>;
  @useResult
  $Res call(
      {int id,
      DateTime dateOfRegister,
      String city,
      int totalFinishedServices,
      String description,
      int age});
}

/// @nodoc
class _$EmployeeInfoDtoCopyWithImpl<$Res, $Val extends EmployeeInfoDto>
    implements $EmployeeInfoDtoCopyWith<$Res> {
  _$EmployeeInfoDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? dateOfRegister = null,
    Object? city = null,
    Object? totalFinishedServices = null,
    Object? description = null,
    Object? age = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      dateOfRegister: null == dateOfRegister
          ? _value.dateOfRegister
          : dateOfRegister // ignore: cast_nullable_to_non_nullable
              as DateTime,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      totalFinishedServices: null == totalFinishedServices
          ? _value.totalFinishedServices
          : totalFinishedServices // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmployeeInfoDtoImplCopyWith<$Res>
    implements $EmployeeInfoDtoCopyWith<$Res> {
  factory _$$EmployeeInfoDtoImplCopyWith(_$EmployeeInfoDtoImpl value,
          $Res Function(_$EmployeeInfoDtoImpl) then) =
      __$$EmployeeInfoDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      DateTime dateOfRegister,
      String city,
      int totalFinishedServices,
      String description,
      int age});
}

/// @nodoc
class __$$EmployeeInfoDtoImplCopyWithImpl<$Res>
    extends _$EmployeeInfoDtoCopyWithImpl<$Res, _$EmployeeInfoDtoImpl>
    implements _$$EmployeeInfoDtoImplCopyWith<$Res> {
  __$$EmployeeInfoDtoImplCopyWithImpl(
      _$EmployeeInfoDtoImpl _value, $Res Function(_$EmployeeInfoDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? dateOfRegister = null,
    Object? city = null,
    Object? totalFinishedServices = null,
    Object? description = null,
    Object? age = null,
  }) {
    return _then(_$EmployeeInfoDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      dateOfRegister: null == dateOfRegister
          ? _value.dateOfRegister
          : dateOfRegister // ignore: cast_nullable_to_non_nullable
              as DateTime,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      totalFinishedServices: null == totalFinishedServices
          ? _value.totalFinishedServices
          : totalFinishedServices // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EmployeeInfoDtoImpl implements _EmployeeInfoDto {
  const _$EmployeeInfoDtoImpl(
      {required this.id,
      required this.dateOfRegister,
      required this.city,
      required this.totalFinishedServices,
      required this.description,
      required this.age});

  factory _$EmployeeInfoDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmployeeInfoDtoImplFromJson(json);

  @override
  final int id;
  @override
  final DateTime dateOfRegister;
  @override
  final String city;
  @override
  final int totalFinishedServices;
  @override
  final String description;
  @override
  final int age;

  @override
  String toString() {
    return 'EmployeeInfoDto(id: $id, dateOfRegister: $dateOfRegister, city: $city, totalFinishedServices: $totalFinishedServices, description: $description, age: $age)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmployeeInfoDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.dateOfRegister, dateOfRegister) ||
                other.dateOfRegister == dateOfRegister) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.totalFinishedServices, totalFinishedServices) ||
                other.totalFinishedServices == totalFinishedServices) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.age, age) || other.age == age));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, dateOfRegister, city,
      totalFinishedServices, description, age);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmployeeInfoDtoImplCopyWith<_$EmployeeInfoDtoImpl> get copyWith =>
      __$$EmployeeInfoDtoImplCopyWithImpl<_$EmployeeInfoDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EmployeeInfoDtoImplToJson(
      this,
    );
  }
}

abstract class _EmployeeInfoDto implements EmployeeInfoDto {
  const factory _EmployeeInfoDto(
      {required final int id,
      required final DateTime dateOfRegister,
      required final String city,
      required final int totalFinishedServices,
      required final String description,
      required final int age}) = _$EmployeeInfoDtoImpl;

  factory _EmployeeInfoDto.fromJson(Map<String, dynamic> json) =
      _$EmployeeInfoDtoImpl.fromJson;

  @override
  int get id;
  @override
  DateTime get dateOfRegister;
  @override
  String get city;
  @override
  int get totalFinishedServices;
  @override
  String get description;
  @override
  int get age;
  @override
  @JsonKey(ignore: true)
  _$$EmployeeInfoDtoImplCopyWith<_$EmployeeInfoDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
