import 'package:clean_todo_api/core/typedefs/typedefs.dart';
import 'package:equatable/equatable.dart';

class SignupResponseModel extends Equatable {
  const SignupResponseModel({required this.id});

  final String id;

  @override
  List<Object> get props => [id];

  MapData toJson() {
    return {'id': id};
  }
}
