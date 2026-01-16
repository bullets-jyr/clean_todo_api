import 'package:clean_todo_api/core/typedefs/typedefs.dart';

abstract interface class Usecase<ReturnType, ParamsType> {
  FutureEither<ReturnType> call(ParamsType params);
}
