//
//  shakesphere
//  api_response
//
//  Created by Ngonidzashe Mangudya on 31/03/2024.
//  Copyright (c) 2024 ModestNerds, Co
//

import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/api_response.freezed.dart';
part 'generated/api_response.g.dart';

@freezed
class ApiResponse with _$ApiResponse {
  const factory ApiResponse({
    required bool status,
    required String statusDescription,
    required String? message,
    required Map<String, dynamic>? data,
    required dynamic issues,
  }) = _ApiResponse;

  const ApiResponse._();

  factory ApiResponse.fromJson(Map<String, dynamic> json) =>
      _$ApiResponseFromJson(json);
}
