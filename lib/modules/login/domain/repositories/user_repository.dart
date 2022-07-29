import 'package:cleantdd/modules/login/domain/entities/user.dart';
import 'package:dartz/dartz.dart';

import '../errors/user_errors.dart';

abstract class UserRepository {
  Future<Either<ExceptUser, User>> getUserByEmail(String email);
  Future<Either<ExceptUser, bool>> loginUser(String email, String password);
}
