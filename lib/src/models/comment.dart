library comment;

import 'package:json_annotation/json_annotation.dart';
import 'package:hacker_news_client/src/models/story_type.dart';

part 'comment.g.dart';

/// A Comment on a Story, Poll, Ask Hacker News Question, or Show Hacker News
/// Post
// abstract class Comment implements Built<Comment, CommentBuilder> {
//   Comment._();

//   factory Comment([updates(CommentBuilder b)]) = _$Comment;

//   @nullable
//   String get by;

//   int get id;

//   BuiltList<int> get kids;

//   @nullable
//   BuiltList<Comment> get comments;

//   int get parent;

//   @nullable
//   String get text;

//   DateTime get time;

//   StoryType get type;

//   String toJson() {
//     return json.encode(serializers.serializeWith(Comment.serializer, this));
//   }

//   static Comment fromJson(String jsonString) {
//     return serializers.deserializeWith(
//         Comment.serializer, json.decode(jsonString));
//   }

//   static Serializer<Comment> get serializer => _$commentSerializer;
// }

@JsonSerializable(nullable: false)
class Comment extends Object with _$CommentSerializerMixin {
  final String by;
  final int id;
  final List<int> kids;
  List<Comment> comments;
  final int parent;
  final DateTime time;
  final StoryType type;
  Comment({
    this.by,
    this.id,
    this.kids,
    this.comments,
    this.parent,
    this.time,
    this.type,
  });
  factory Comment.fromJson(Map<String, dynamic> json) =>
      _$CommentFromJson(json);
}
