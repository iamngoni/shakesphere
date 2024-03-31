// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../signup_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignupDTOImpl _$$SignupDTOImplFromJson(Map json) => _$SignupDTOImpl(
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      emailAddress: json['emailAddress'] as String,
      phoneNumber: json['phoneNumber'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$SignupDTOImplToJson(_$SignupDTOImpl instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'emailAddress': instance.emailAddress,
      'phoneNumber': instance.phoneNumber,
      'password': instance.password,
    };
