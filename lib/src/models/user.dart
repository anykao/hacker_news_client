library user;

import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

/// A Hacker News Users
// abstract class User implements Built<User, UserBuilder> {
//   User._();

//   factory User([updates(UserBuilder b)]) = _$User;

//   @nullable
//   String get about;

//   int get created;

//   String get id;

//   int get karma;

//   @nullable
//   BuiltList<int> get submitted;

//   String toJson() {
//     return json.encode(serializers.serializeWith(User.serializer, this));
//   }

//   static User fromJson(String jsonString) {
//     return serializers.deserializeWith(
//         User.serializer, json.decode(jsonString));
//   }

//   static Serializer<User> get serializer => _$userSerializer;
// }

@JsonSerializable(nullable: false)
class User extends Object with _$UserSerializerMixin {
  final String about;
  final int created;
  final String id;
  final int karma;
  final List<int> submitted;
  User({
    this.about,
    this.created,
    this.id,
    this.karma,
    this.submitted,
  });
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
