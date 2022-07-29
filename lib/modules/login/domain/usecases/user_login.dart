import 'package:cleantdd/modules/login/domain/errors/user_errors.dart';
import 'package:cleantdd/modules/login/domain/repositories/user_repository.dart';
import 'package:dartz/dartz.dart';

abstract class UserLoginAuth {
  Future<Either<ExceptUser, bool>> call(String email, String password);
}

class UserLoginAuthImpl implements UserLoginAuth {
  final UserRepository repository;

  UserLoginAuthImpl(this.repository);

  @override
  Future<Either<ExceptUser, bool>> call(String email, String password) async {
    return await repository.loginUser(email, password);
  }
}
