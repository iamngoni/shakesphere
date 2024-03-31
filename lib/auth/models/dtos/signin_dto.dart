//
//  shakesphere
//  signin_dto
//
//  Created by Ngonidzashe Mangudya on 31/03/2024.
//  Copyright (c) 2024 ModestNerds, Co
//

import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/signin_dto.freezed.dart';
part 'generated/signin_dto.g.dart';

@freezed
class SigninDTO with _$SigninDTO {
  const factory SigninDTO({
    required String emailAddress,
    required String password,
  }) = _SigninDTO;

  const SigninDTO._();

  factory SigninDTO.fromJson(Map<String, dynamic> json) =>
      _$SigninDTOFromJson(json);
}
