// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offer_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OfferDto _$OfferDtoFromJson(Map<String, dynamic> json) {
  return _OfferDto.fromJson(json);
}

/// @nodoc
mixin _$OfferDto {
  int get offerId => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OfferDtoCopyWith<OfferDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfferDtoCopyWith<$Res> {
  factory $OfferDtoCopyWith(OfferDto value, $Res Function(OfferDto) then) =
      _$OfferDtoCopyWithImpl<$Res, OfferDto>;
  @useResult
  $Res call({int offerId, int count, String message});
}

/// @nodoc
class _$OfferDtoCopyWithImpl<$Res, $Val extends OfferDto>
    implements $OfferDtoCopyWith<$Res> {
  _$OfferDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offerId = null,
    Object? count = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      offerId: null == offerId
          ? _value.offerId
          : offerId // ignore: cast_nullable_to_non_nullable
              as int,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OfferDtoImplCopyWith<$Res>
    implements $OfferDtoCopyWith<$Res> {
  factory _$$OfferDtoImplCopyWith(
          _$OfferDtoImpl value, $Res Function(_$OfferDtoImpl) then) =
      __$$OfferDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int offerId, int count, String message});
}

/// @nodoc
class __$$OfferDtoImplCopyWithImpl<$Res>
    extends _$OfferDtoCopyWithImpl<$Res, _$OfferDtoImpl>
    implements _$$OfferDtoImplCopyWith<$Res> {
  __$$OfferDtoImplCopyWithImpl(
      _$OfferDtoImpl _value, $Res Function(_$OfferDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offerId = null,
    Object? count = null,
    Object? message = null,
  }) {
    return _then(_$OfferDtoImpl(
      offerId: null == offerId
          ? _value.offerId
          : offerId // ignore: cast_nullable_to_non_nullable
              as int,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OfferDtoImpl implements _OfferDto {
  const _$OfferDtoImpl(
      {required this.offerId, required this.count, required this.message});

  factory _$OfferDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$OfferDtoImplFromJson(json);

  @override
  final int offerId;
  @override
  final int count;
  @override
  final String message;

  @override
  String toString() {
    return 'OfferDto(offerId: $offerId, count: $count, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OfferDtoImpl &&
            (identical(other.offerId, offerId) || other.offerId == offerId) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, offerId, count, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OfferDtoImplCopyWith<_$OfferDtoImpl> get copyWith =>
      __$$OfferDtoImplCopyWithImpl<_$OfferDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OfferDtoImplToJson(
      this,
    );
  }
}

abstract class _OfferDto implements OfferDto {
  const factory _OfferDto(
      {required final int offerId,
      required final int count,
      required final String message}) = _$OfferDtoImpl;

  factory _OfferDto.fromJson(Map<String, dynamic> json) =
      _$OfferDtoImpl.fromJson;

  @override
  int get offerId;
  @override
  int get count;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$OfferDtoImplCopyWith<_$OfferDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
