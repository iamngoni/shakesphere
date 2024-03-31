//
//  shakesphere
//  signup_dto
//
//  Created by Ngonidzashe Mangudya on 31/03/2024.
//  Copyright (c) 2024 ModestNerds, Co
//

import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/signup_dto.freezed.dart';
part 'generated/signup_dto.g.dart';

@freezed
class SignupDTO with _$SignupDTO {
  const factory SignupDTO({
    required String firstName,
    required String lastName,
    required String emailAddress,
    required String phoneNumber,
    required String password,
  }) = _SignupDTO;

  const SignupDTO._();

  factory SignupDTO.fromJson(Map<String, dynamic> json) =>
      _$SignupDTOFromJson(json);
}
