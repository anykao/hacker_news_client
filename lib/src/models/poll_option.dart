library poll_part;

import 'package:json_annotation/json_annotation.dart';
import 'package:hacker_news_client/src/models/story_type.dart';

part 'poll_option.g.dart';

/// An option for a poll. It contains a score that represents the number of
/// votes on a particular option.
// abstract class PollOption implements Built<PollOption, PollOptionBuilder> {
//   PollOption._();

//   factory PollOption([updates(PollOptionBuilder b)]) = _$PollOption;

//   @nullable
//   String get by;

//   int get id;

//   int get poll;

//   int get score;

//   String get text;

//   DateTime get time;

//   StoryType get type;

//   String toJson() {
//     return json.encode(serializers.serializeWith(PollOption.serializer, this));
//   }

//   static PollOption fromJson(String jsonString) {
//     return serializers.deserializeWith(
//         PollOption.serializer, json.decode(jsonString));
//   }

//   static Serializer<PollOption> get serializer => _$pollOptionSerializer;
// }

@JsonSerializable(nullable: false)
class PollOption extends Object with _$PollOptionSerializerMixin {
  final String by;
  final int id;
  final int poll;
  final int score;
  final String text;
  final DateTime time;
  final StoryType type;
  PollOption({
    this.by,
    this.id,
    this.poll,
    this.score,
    this.time,
    this.text,
    this.type,
  });
  factory PollOption.fromJson(Map<String, dynamic> json) =>
      _$PollOptionFromJson(json);
}
