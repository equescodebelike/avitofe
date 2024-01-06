// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_info_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AdminInfoDto _$AdminInfoDtoFromJson(Map<String, dynamic> json) {
  return _AdminInfoDto.fromJson(json);
}

/// @nodoc
mixin _$AdminInfoDto {
  int get id => throw _privateConstructorUsedError;
  DateTime get dateOfRegister => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdminInfoDtoCopyWith<AdminInfoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminInfoDtoCopyWith<$Res> {
  factory $AdminInfoDtoCopyWith(
          AdminInfoDto value, $Res Function(AdminInfoDto) then) =
      _$AdminInfoDtoCopyWithImpl<$Res, AdminInfoDto>;
  @useResult
  $Res call({int id, DateTime dateOfRegister});
}

/// @nodoc
class _$AdminInfoDtoCopyWithImpl<$Res, $Val extends AdminInfoDto>
    implements $AdminInfoDtoCopyWith<$Res> {
  _$AdminInfoDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? dateOfRegister = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdminInfoDtoImplCopyWith<$Res>
    implements $AdminInfoDtoCopyWith<$Res> {
  factory _$$AdminInfoDtoImplCopyWith(
          _$AdminInfoDtoImpl value, $Res Function(_$AdminInfoDtoImpl) then) =
      __$$AdminInfoDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, DateTime dateOfRegister});
}

/// @nodoc
class __$$AdminInfoDtoImplCopyWithImpl<$Res>
    extends _$AdminInfoDtoCopyWithImpl<$Res, _$AdminInfoDtoImpl>
    implements _$$AdminInfoDtoImplCopyWith<$Res> {
  __$$AdminInfoDtoImplCopyWithImpl(
      _$AdminInfoDtoImpl _value, $Res Function(_$AdminInfoDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? dateOfRegister = null,
  }) {
    return _then(_$AdminInfoDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      dateOfRegister: null == dateOfRegister
          ? _value.dateOfRegister
          : dateOfRegister // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdminInfoDtoImpl implements _AdminInfoDto {
  const _$AdminInfoDtoImpl({required this.id, required this.dateOfRegister});

  factory _$AdminInfoDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdminInfoDtoImplFromJson(json);

  @override
  final int id;
  @override
  final DateTime dateOfRegister;

  @override
  String toString() {
    return 'AdminInfoDto(id: $id, dateOfRegister: $dateOfRegister)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminInfoDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.dateOfRegister, dateOfRegister) ||
                other.dateOfRegister == dateOfRegister));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, dateOfRegister);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminInfoDtoImplCopyWith<_$AdminInfoDtoImpl> get copyWith =>
      __$$AdminInfoDtoImplCopyWithImpl<_$AdminInfoDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdminInfoDtoImplToJson(
      this,
    );
  }
}

abstract class _AdminInfoDto implements AdminInfoDto {
  const factory _AdminInfoDto(
      {required final int id,
      required final DateTime dateOfRegister}) = _$AdminInfoDtoImpl;

  factory _AdminInfoDto.fromJson(Map<String, dynamic> json) =
      _$AdminInfoDtoImpl.fromJson;

  @override
  int get id;
  @override
  DateTime get dateOfRegister;
  @override
  @JsonKey(ignore: true)
  _$$AdminInfoDtoImplCopyWith<_$AdminInfoDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
