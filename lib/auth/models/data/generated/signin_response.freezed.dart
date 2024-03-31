// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../signin_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SigninResponse _$SigninResponseFromJson(Map<String, dynamic> json) {
  return _SigninResponse.fromJson(json);
}

/// @nodoc
mixin _$SigninResponse {
  String get accessToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SigninResponseCopyWith<SigninResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SigninResponseCopyWith<$Res> {
  factory $SigninResponseCopyWith(
          SigninResponse value, $Res Function(SigninResponse) then) =
      _$SigninResponseCopyWithImpl<$Res, SigninResponse>;
  @useResult
  $Res call({String accessToken});
}

/// @nodoc
class _$SigninResponseCopyWithImpl<$Res, $Val extends SigninResponse>
    implements $SigninResponseCopyWith<$Res> {
  _$SigninResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
  }) {
    return _then(_value.copyWith(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SigninResponseImplCopyWith<$Res>
    implements $SigninResponseCopyWith<$Res> {
  factory _$$SigninResponseImplCopyWith(_$SigninResponseImpl value,
          $Res Function(_$SigninResponseImpl) then) =
      __$$SigninResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String accessToken});
}

/// @nodoc
class __$$SigninResponseImplCopyWithImpl<$Res>
    extends _$SigninResponseCopyWithImpl<$Res, _$SigninResponseImpl>
    implements _$$SigninResponseImplCopyWith<$Res> {
  __$$SigninResponseImplCopyWithImpl(
      _$SigninResponseImpl _value, $Res Function(_$SigninResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
  }) {
    return _then(_$SigninResponseImpl(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SigninResponseImpl extends _SigninResponse {
  const _$SigninResponseImpl({required this.accessToken}) : super._();

  factory _$SigninResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SigninResponseImplFromJson(json);

  @override
  final String accessToken;

  @override
  String toString() {
    return 'SigninResponse(accessToken: $accessToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SigninResponseImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SigninResponseImplCopyWith<_$SigninResponseImpl> get copyWith =>
      __$$SigninResponseImplCopyWithImpl<_$SigninResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SigninResponseImplToJson(
      this,
    );
  }
}

abstract class _SigninResponse extends SigninResponse {
  const factory _SigninResponse({required final String accessToken}) =
      _$SigninResponseImpl;
  const _SigninResponse._() : super._();

  factory _SigninResponse.fromJson(Map<String, dynamic> json) =
      _$SigninResponseImpl.fromJson;

  @override
  String get accessToken;
  @override
  @JsonKey(ignore: true)
  _$$SigninResponseImplCopyWith<_$SigninResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
