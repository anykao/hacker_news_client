library summary;

import 'package:json_annotation/json_annotation.dart';
import 'package:hacker_news_client/src/models/story_type.dart';

part 'summary.g.dart';

/// Provides a Summary of a Story, Comment, Job, Poll, Ask Hacker News Post, or
/// Show Hacker News post.
///
/// It is similar to a Story or Poll, but it does not contain a full list of
/// comments for those objects nor does it include the poll options for polls.
// abstract class Summary implements Built<Summary, SummaryBuilder> {
//   Summary._();

//   factory Summary([updates(SummaryBuilder b)]) = _$Summary;

//   String get by;

//   @nullable
//   int get descendants;

//   int get id;

//   BuiltList<int> get kids;

//   @nullable
//   int get score;

//   DateTime get time;

//   @nullable
//   String get title;

//   StoryType get type;

//   @nullable
//   String get url;

//   String toJson() {
//     return json.encode(serializers.serializeWith(Summary.serializer, this));
//   }

//   static Summary fromJson(String jsonString) {
//     return serializers.deserializeWith(
//         Summary.serializer, json.decode(jsonString));
//   }

//   static Serializer<Summary> get serializer => _$summarySerializer;
// }

@JsonSerializable(nullable: false)
class Summary extends Object with _$SummarySerializerMixin {
  final String by;
  final int descendants;
  final int id;
  final List<int> kids;
  final int score;
  final DateTime time;
  final String title;
  final StoryType type;
  final String url;
  Summary({
    this.by,
    this.descendants,
    this.id,
    this.kids,
    this.score,
    this.time,
    this.title,
    this.type,
    this.url,
  });
  factory Summary.fromJson(Map<String, dynamic> json) =>
      _$SummaryFromJson(json);
}
