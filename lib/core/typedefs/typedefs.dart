import 'package:clean_todo_api/core/errors/failures.dart';
import 'package:fpdart/fpdart.dart';

typedef MapData = Map<String, dynamic>;
typedef EitherOr<T> = Either<Failure, T>;
typedef FutureEither<T> = Future<EitherOr<T>>;
