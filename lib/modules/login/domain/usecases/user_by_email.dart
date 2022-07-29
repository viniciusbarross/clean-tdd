
import 'package:cleantdd/modules/login/domain/entities/user.dart';
import 'package:cleantdd/modules/login/domain/errors/user_errors.dart';
import 'package:cleantdd/modules/login/domain/repositories/user_repository.dart';
import 'package:dartz/dartz.dart';

abstract class UserByEmail {
  Future<Either<ExceptUser, User>> call(String email);
}

class UserByEmailImpl implements UserByEmail {
  final UserRepository repository;

  UserByEmailImpl(this.repository);

  @override
  Future<Either<ExceptUser, User>> call(String email) async {
    return await repository.getUserByEmail(email);
  }
}