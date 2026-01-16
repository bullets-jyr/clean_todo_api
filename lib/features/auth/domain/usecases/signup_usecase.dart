import 'package:clean_todo_api/core/typedefs/typedefs.dart';
import 'package:clean_todo_api/core/usecases/usecases.dart';
import 'package:clean_todo_api/features/auth/domain/dtos/request/signup_request_model.dart';
import 'package:clean_todo_api/features/auth/domain/dtos/response/signup_response_model.dart';
import 'package:clean_todo_api/features/auth/domain/presenters/auth_presenter.dart';
import 'package:clean_todo_api/features/auth/domain/repositories/auth_repository.dart';

class SignupUsecase
    implements Usecase<SignupResponseModel, SignupRequestModel> {
  SignupUsecase({
    required AuthRepository authRepository,
    required AuthPresenter authPresenter,
  })  : _authRepository = authRepository,
        _authPresenter = authPresenter;

  final AuthRepository _authRepository;
  final AuthPresenter _authPresenter;

  @override
  FutureEither<SignupResponseModel> call(SignupRequestModel params) async {
    final result = await _authRepository.signup(
      username: params.username,
      email: params.email,
      password: params.password,
    );

    final response = _authPresenter.signupPresenter(result);

    return response;
  }
}
