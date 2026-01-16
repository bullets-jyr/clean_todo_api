import 'package:clean_todo_api/features/auth/data/models/user_model.dart';

abstract interface class AuthDataSource {
  Future<UserModel> signup({
    required String username,
    required String email,
    required String password,
  });

  // Future<UserModel> signin({
  //   required String email,
  //   required String password,
  // });

  // Future<void> resetPassword({
  //   required String email,
  // });
}