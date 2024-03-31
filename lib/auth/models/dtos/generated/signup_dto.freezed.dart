// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../signup_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SignupDTO _$SignupDTOFromJson(Map<String, dynamic> json) {
  return _SignupDTO.fromJson(json);
}

/// @nodoc
mixin _$SignupDTO {
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get emailAddress => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignupDTOCopyWith<SignupDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupDTOCopyWith<$Res> {
  factory $SignupDTOCopyWith(SignupDTO value, $Res Function(SignupDTO) then) =
      _$SignupDTOCopyWithImpl<$Res, SignupDTO>;
  @useResult
  $Res call(
      {String firstName,
      String lastName,
      String emailAddress,
      String phoneNumber,
      String password});
}

/// @nodoc
class _$SignupDTOCopyWithImpl<$Res, $Val extends SignupDTO>
    implements $SignupDTOCopyWith<$Res> {
  _$SignupDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? emailAddress = null,
    Object? phoneNumber = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignupDTOImplCopyWith<$Res>
    implements $SignupDTOCopyWith<$Res> {
  factory _$$SignupDTOImplCopyWith(
          _$SignupDTOImpl value, $Res Function(_$SignupDTOImpl) then) =
      __$$SignupDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String firstName,
      String lastName,
      String emailAddress,
      String phoneNumber,
      String password});
}

/// @nodoc
class __$$SignupDTOImplCopyWithImpl<$Res>
    extends _$SignupDTOCopyWithImpl<$Res, _$SignupDTOImpl>
    implements _$$SignupDTOImplCopyWith<$Res> {
  __$$SignupDTOImplCopyWithImpl(
      _$SignupDTOImpl _value, $Res Function(_$SignupDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? emailAddress = null,
    Object? phoneNumber = null,
    Object? password = null,
  }) {
    return _then(_$SignupDTOImpl(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignupDTOImpl extends _SignupDTO {
  const _$SignupDTOImpl(
      {required this.firstName,
      required this.lastName,
      required this.emailAddress,
      required this.phoneNumber,
      required this.password})
      : super._();

  factory _$SignupDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignupDTOImplFromJson(json);

  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String emailAddress;
  @override
  final String phoneNumber;
  @override
  final String password;

  @override
  String toString() {
    return 'SignupDTO(firstName: $firstName, lastName: $lastName, emailAddress: $emailAddress, phoneNumber: $phoneNumber, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignupDTOImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, firstName, lastName, emailAddress, phoneNumber, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignupDTOImplCopyWith<_$SignupDTOImpl> get copyWith =>
      __$$SignupDTOImplCopyWithImpl<_$SignupDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignupDTOImplToJson(
      this,
    );
  }
}

abstract class _SignupDTO extends SignupDTO {
  const factory _SignupDTO(
      {required final String firstName,
      required final String lastName,
      required final String emailAddress,
      required final String phoneNumber,
      required final String password}) = _$SignupDTOImpl;
  const _SignupDTO._() : super._();

  factory _SignupDTO.fromJson(Map<String, dynamic> json) =
      _$SignupDTOImpl.fromJson;

  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get emailAddress;
  @override
  String get phoneNumber;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$SignupDTOImplCopyWith<_$SignupDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
