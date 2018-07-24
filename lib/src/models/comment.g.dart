// GENERATED CODE - DO NOT MODIFY BY HAND

part of comment;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Comment _$CommentFromJson(Map<String, dynamic> json) {
  return new Comment(
      by: json['by'] as String,
      id: json['id'] as int,
      kids: (json['kids'] as List).map((e) => e as int).toList(),
      comments: (json['comments'] as List)
          .map((e) => new Comment.fromJson(e as Map<String, dynamic>))
          .toList(),
      parent: json['parent'] as int,
      time: DateTime.parse(json['time'] as String),
      type: $enumDecode('StoryType', StoryType.values, json['type'] as String));
}

abstract class _$CommentSerializerMixin {
  String get by;
  int get id;
  List<int> get kids;
  List<Comment> get comments;
  int get parent;
  DateTime get time;
  StoryType get type;
  Map<String, dynamic> toJson() => <String, dynamic>{
        'by': by,
        'id': id,
        'kids': kids,
        'comments': comments,
        'parent': parent,
        'time': time.toIso8601String(),
        'type': type.toString().split('.').last
      };
}
