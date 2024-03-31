// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../signin_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SigninDTO _$SigninDTOFromJson(Map<String, dynamic> json) {
  return _SigninDTO.fromJson(json);
}

/// @nodoc
mixin _$SigninDTO {
  String get emailAddress => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SigninDTOCopyWith<SigninDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SigninDTOCopyWith<$Res> {
  factory $SigninDTOCopyWith(SigninDTO value, $Res Function(SigninDTO) then) =
      _$SigninDTOCopyWithImpl<$Res, SigninDTO>;
  @useResult
  $Res call({String emailAddress, String password});
}

/// @nodoc
class _$SigninDTOCopyWithImpl<$Res, $Val extends SigninDTO>
    implements $SigninDTOCopyWith<$Res> {
  _$SigninDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailAddress = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SigninDTOImplCopyWith<$Res>
    implements $SigninDTOCopyWith<$Res> {
  factory _$$SigninDTOImplCopyWith(
          _$SigninDTOImpl value, $Res Function(_$SigninDTOImpl) then) =
      __$$SigninDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String emailAddress, String password});
}

/// @nodoc
class __$$SigninDTOImplCopyWithImpl<$Res>
    extends _$SigninDTOCopyWithImpl<$Res, _$SigninDTOImpl>
    implements _$$SigninDTOImplCopyWith<$Res> {
  __$$SigninDTOImplCopyWithImpl(
      _$SigninDTOImpl _value, $Res Function(_$SigninDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailAddress = null,
    Object? password = null,
  }) {
    return _then(_$SigninDTOImpl(
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
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
class _$SigninDTOImpl extends _SigninDTO {
  const _$SigninDTOImpl({required this.emailAddress, required this.password})
      : super._();

  factory _$SigninDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$SigninDTOImplFromJson(json);

  @override
  final String emailAddress;
  @override
  final String password;

  @override
  String toString() {
    return 'SigninDTO(emailAddress: $emailAddress, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SigninDTOImpl &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, emailAddress, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SigninDTOImplCopyWith<_$SigninDTOImpl> get copyWith =>
      __$$SigninDTOImplCopyWithImpl<_$SigninDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SigninDTOImplToJson(
      this,
    );
  }
}

abstract class _SigninDTO extends SigninDTO {
  const factory _SigninDTO(
      {required final String emailAddress,
      required final String password}) = _$SigninDTOImpl;
  const _SigninDTO._() : super._();

  factory _SigninDTO.fromJson(Map<String, dynamic> json) =
      _$SigninDTOImpl.fromJson;

  @override
  String get emailAddress;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$SigninDTOImplCopyWith<_$SigninDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
