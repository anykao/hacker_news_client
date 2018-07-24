// GENERATED CODE - DO NOT MODIFY BY HAND

part of user;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return new User(
      about: json['about'] as String,
      created: json['created'] as int,
      id: json['id'] as String,
      karma: json['karma'] as int,
      submitted: (json['submitted'] as List).map((e) => e as int).toList());
}

abstract class _$UserSerializerMixin {
  String get about;
  int get created;
  String get id;
  int get karma;
  List<int> get submitted;
  Map<String, dynamic> toJson() => <String, dynamic>{
        'about': about,
        'created': created,
        'id': id,
        'karma': karma,
        'submitted': submitted
      };
}
