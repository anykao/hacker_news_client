library poll;

import 'package:json_annotation/json_annotation.dart';
import 'package:hacker_news_client/src/models/comment.dart';
import 'package:hacker_news_client/src/models/poll_option.dart';
import 'package:hacker_news_client/src/models/story_type.dart';

part 'poll.g.dart';

/// A Poll with all options and comments included
// abstract class Poll implements Built<Poll, PollBuilder> {
//   Poll._();

//   factory Poll([updates(PollBuilder b)]) = _$Poll;

//   String get by;

//   int get descendants;

//   int get id;

//   BuiltList<int> get kids;

//   @nullable
//   BuiltList<Comment> get comments;

//   BuiltList<int> get parts;

//   @nullable
//   BuiltList<PollOption> get options;

//   int get score;

//   DateTime get time;

//   String get title;

//   StoryType get type;

//   String toJson() {
//     return json.encode(serializers.serializeWith(Poll.serializer, this));
//   }

//   static Poll fromJson(String jsonString) {
//     return serializers.deserializeWith(
//         Poll.serializer, json.decode(jsonString));
//   }

//   static Serializer<Poll> get serializer => _$pollSerializer;
// }

@JsonSerializable(nullable: false)
class Poll extends Object with _$PollSerializerMixin {
  final String by;
  final int descendants;
  final int id;
  final List<int> kids;
  List<Comment> comments;
  final List<int> parts;
  List<PollOption> options;
  final int score;
  final DateTime time;
  final String title;
  final StoryType type;
  Poll({
    this.by,
    this.descendants,
    this.id,
    this.kids,
    this.parts,
    this.options,
    this.time,
    this.title,
    this.type,
    this.score,
    this.comments,
  });
  factory Poll.fromJson(Map<String, dynamic> json) => _$PollFromJson(json);
}
