//
//  shakesphere
//  auth_repository
//
//  Created by Ngonidzashe Mangudya on 31/03/2024.
//  Copyright (c) 2024 ModestNerds, Co
//

import 'package:dartz/dartz.dart';

import '../../../../shared/models/application_error.dart';
import '../../dtos/signin_dto.dart';
import '../../dtos/signup_dto.dart';

abstract class AuthRepository {
  Future<Either<ApplicationError, void>> isAuthenticated();
  Future<Either<ApplicationError, void>> signUp(SignupDTO dto);
  Future<Either<ApplicationError, void>> signIn(SigninDTO dto);
}
