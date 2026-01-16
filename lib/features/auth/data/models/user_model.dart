import 'package:clean_todo_api/core/converters/converters.dart';
import 'package:clean_todo_api/features/auth/domain/entities/user_entitiy.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable(createToJson: false)
class UserModel extends User {
  const UserModel({
    required super.id,
    required super.username,
    required super.email,
    required super.createdAt,
    required super.updatedAt,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  @JsonKey(readValue: idOrUnderscoreId)
  @override
  String get id;

  @override
  String get username;

  @override
  String get email;

  @JsonKey(
    fromJson: fromDateTime,
    readValue: createdAtOrCreatedUnderscoreAt,
  )
  @override
  DateTime get createdAt;

  @JsonKey(
    fromJson: fromDateTime,
    readValue: updatedAtOrUpdatedUnderscoreAt,
  )
  @override
  DateTime get updatedAt;

  @override
  String toString() {
    return 'UserModel(id: $id, username: $username, email: $email, '
        'createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  UserModel copyWith({
    String? id,
    String? username,
    String? email,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return UserModel(
      id: id ?? this.id,
      username: username ?? this.username,
      email: email ?? this.email,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
