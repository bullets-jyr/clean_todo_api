import 'package:clean_todo_api/features/auth/domain/entities/user_entitiy.dart';

class UserModel extends User {
  const UserModel({
    required super.id,
    required super.username,
    required super.email,
    required super.createdAt,
    required super.updatedAt,
  });
}
