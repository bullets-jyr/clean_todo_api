import 'package:clean_todo_api/core/typedefs/typedefs.dart';
import 'package:clean_todo_api/features/auth/domain/entities/user_entitiy.dart';

abstract interface class AuthRepository {
  FutureEither<User> signup({
    required String username,
    required String email,
    required String password,
  });

  FutureEither<User> signin({
    required String email,
    required String password,
  });

  FutureEither<void> resetPassword({
    required String email,
  });
}
