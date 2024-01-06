// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserDto _$UserDtoFromJson(Map<String, dynamic> json) {
  return _UserDto.fromJson(json);
}

/// @nodoc
mixin _$UserDto {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get surname => throw _privateConstructorUsedError;
  String get patronymic => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  EmployeeInfoDto get employeeInfoDto => throw _privateConstructorUsedError;
  UserInfoDto get userInfoDto => throw _privateConstructorUsedError;
  AdminInfoDto get adminInfoDto => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDtoCopyWith<UserDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDtoCopyWith<$Res> {
  factory $UserDtoCopyWith(UserDto value, $Res Function(UserDto) then) =
      _$UserDtoCopyWithImpl<$Res, UserDto>;
  @useResult
  $Res call(
      {int id,
      String name,
      String surname,
      String patronymic,
      String email,
      String username,
      String password,
      String role,
      String phoneNumber,
      EmployeeInfoDto employeeInfoDto,
      UserInfoDto userInfoDto,
      AdminInfoDto adminInfoDto});

  $EmployeeInfoDtoCopyWith<$Res> get employeeInfoDto;
  $UserInfoDtoCopyWith<$Res> get userInfoDto;
  $AdminInfoDtoCopyWith<$Res> get adminInfoDto;
}

/// @nodoc
class _$UserDtoCopyWithImpl<$Res, $Val extends UserDto>
    implements $UserDtoCopyWith<$Res> {
  _$UserDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? surname = null,
    Object? patronymic = null,
    Object? email = null,
    Object? username = null,
    Object? password = null,
    Object? role = null,
    Object? phoneNumber = null,
    Object? employeeInfoDto = null,
    Object? userInfoDto = null,
    Object? adminInfoDto = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      surname: null == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String,
      patronymic: null == patronymic
          ? _value.patronymic
          : patronymic // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      employeeInfoDto: null == employeeInfoDto
          ? _value.employeeInfoDto
          : employeeInfoDto // ignore: cast_nullable_to_non_nullable
              as EmployeeInfoDto,
      userInfoDto: null == userInfoDto
          ? _value.userInfoDto
          : userInfoDto // ignore: cast_nullable_to_non_nullable
              as UserInfoDto,
      adminInfoDto: null == adminInfoDto
          ? _value.adminInfoDto
          : adminInfoDto // ignore: cast_nullable_to_non_nullable
              as AdminInfoDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EmployeeInfoDtoCopyWith<$Res> get employeeInfoDto {
    return $EmployeeInfoDtoCopyWith<$Res>(_value.employeeInfoDto, (value) {
      return _then(_value.copyWith(employeeInfoDto: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserInfoDtoCopyWith<$Res> get userInfoDto {
    return $UserInfoDtoCopyWith<$Res>(_value.userInfoDto, (value) {
      return _then(_value.copyWith(userInfoDto: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AdminInfoDtoCopyWith<$Res> get adminInfoDto {
    return $AdminInfoDtoCopyWith<$Res>(_value.adminInfoDto, (value) {
      return _then(_value.copyWith(adminInfoDto: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserDtoImplCopyWith<$Res> implements $UserDtoCopyWith<$Res> {
  factory _$$UserDtoImplCopyWith(
          _$UserDtoImpl value, $Res Function(_$UserDtoImpl) then) =
      __$$UserDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String surname,
      String patronymic,
      String email,
      String username,
      String password,
      String role,
      String phoneNumber,
      EmployeeInfoDto employeeInfoDto,
      UserInfoDto userInfoDto,
      AdminInfoDto adminInfoDto});

  @override
  $EmployeeInfoDtoCopyWith<$Res> get employeeInfoDto;
  @override
  $UserInfoDtoCopyWith<$Res> get userInfoDto;
  @override
  $AdminInfoDtoCopyWith<$Res> get adminInfoDto;
}

/// @nodoc
class __$$UserDtoImplCopyWithImpl<$Res>
    extends _$UserDtoCopyWithImpl<$Res, _$UserDtoImpl>
    implements _$$UserDtoImplCopyWith<$Res> {
  __$$UserDtoImplCopyWithImpl(
      _$UserDtoImpl _value, $Res Function(_$UserDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? surname = null,
    Object? patronymic = null,
    Object? email = null,
    Object? username = null,
    Object? password = null,
    Object? role = null,
    Object? phoneNumber = null,
    Object? employeeInfoDto = null,
    Object? userInfoDto = null,
    Object? adminInfoDto = null,
  }) {
    return _then(_$UserDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      surname: null == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String,
      patronymic: null == patronymic
          ? _value.patronymic
          : patronymic // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      employeeInfoDto: null == employeeInfoDto
          ? _value.employeeInfoDto
          : employeeInfoDto // ignore: cast_nullable_to_non_nullable
              as EmployeeInfoDto,
      userInfoDto: null == userInfoDto
          ? _value.userInfoDto
          : userInfoDto // ignore: cast_nullable_to_non_nullable
              as UserInfoDto,
      adminInfoDto: null == adminInfoDto
          ? _value.adminInfoDto
          : adminInfoDto // ignore: cast_nullable_to_non_nullable
              as AdminInfoDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserDtoImpl implements _UserDto {
  const _$UserDtoImpl(
      {required this.id,
      required this.name,
      required this.surname,
      required this.patronymic,
      required this.email,
      required this.username,
      required this.password,
      required this.role,
      required this.phoneNumber,
      required this.employeeInfoDto,
      required this.userInfoDto,
      required this.adminInfoDto});

  factory _$UserDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDtoImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String surname;
  @override
  final String patronymic;
  @override
  final String email;
  @override
  final String username;
  @override
  final String password;
  @override
  final String role;
  @override
  final String phoneNumber;
  @override
  final EmployeeInfoDto employeeInfoDto;
  @override
  final UserInfoDto userInfoDto;
  @override
  final AdminInfoDto adminInfoDto;

  @override
  String toString() {
    return 'UserDto(id: $id, name: $name, surname: $surname, patronymic: $patronymic, email: $email, username: $username, password: $password, role: $role, phoneNumber: $phoneNumber, employeeInfoDto: $employeeInfoDto, userInfoDto: $userInfoDto, adminInfoDto: $adminInfoDto)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.surname, surname) || other.surname == surname) &&
            (identical(other.patronymic, patronymic) ||
                other.patronymic == patronymic) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.employeeInfoDto, employeeInfoDto) ||
                other.employeeInfoDto == employeeInfoDto) &&
            (identical(other.userInfoDto, userInfoDto) ||
                other.userInfoDto == userInfoDto) &&
            (identical(other.adminInfoDto, adminInfoDto) ||
                other.adminInfoDto == adminInfoDto));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      surname,
      patronymic,
      email,
      username,
      password,
      role,
      phoneNumber,
      employeeInfoDto,
      userInfoDto,
      adminInfoDto);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDtoImplCopyWith<_$UserDtoImpl> get copyWith =>
      __$$UserDtoImplCopyWithImpl<_$UserDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDtoImplToJson(
      this,
    );
  }
}

abstract class _UserDto implements UserDto {
  const factory _UserDto(
      {required final int id,
      required final String name,
      required final String surname,
      required final String patronymic,
      required final String email,
      required final String username,
      required final String password,
      required final String role,
      required final String phoneNumber,
      required final EmployeeInfoDto employeeInfoDto,
      required final UserInfoDto userInfoDto,
      required final AdminInfoDto adminInfoDto}) = _$UserDtoImpl;

  factory _UserDto.fromJson(Map<String, dynamic> json) = _$UserDtoImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get surname;
  @override
  String get patronymic;
  @override
  String get email;
  @override
  String get username;
  @override
  String get password;
  @override
  String get role;
  @override
  String get phoneNumber;
  @override
  EmployeeInfoDto get employeeInfoDto;
  @override
  UserInfoDto get userInfoDto;
  @override
  AdminInfoDto get adminInfoDto;
  @override
  @JsonKey(ignore: true)
  _$$UserDtoImplCopyWith<_$UserDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
