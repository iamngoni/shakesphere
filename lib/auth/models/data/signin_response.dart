//
//  shakesphere
//  signin_response
//
//  Created by Ngonidzashe Mangudya on 31/03/2024.
//  Copyright (c) 2024 ModestNerds, Co
//

import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/signin_response.freezed.dart';
part 'generated/signin_response.g.dart';

@freezed
class SigninResponse with _$SigninResponse {
  const factory SigninResponse({
    required String accessToken,
  }) = _SigninResponse;

  const SigninResponse._();

  factory SigninResponse.fromJson(Map<String, dynamic> json) =>
      _$SigninResponseFromJson(json);
}
