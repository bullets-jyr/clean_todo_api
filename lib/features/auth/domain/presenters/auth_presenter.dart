import 'package:clean_todo_api/core/typedefs/typedefs.dart';
import 'package:clean_todo_api/features/auth/domain/dtos/response/signup_response_model.dart';
import 'package:clean_todo_api/features/auth/domain/entities/user_entitiy.dart';

abstract interface class AuthPresenter {
  EitherOr<SignupResponseModel> signupPresenter(
    EitherOr<User> result,
  );

  // EitherOr<SigninResponseModel> signinPresenter(
  //   EitherOr<User> result,
  // );
}
