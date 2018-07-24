library job;

import 'package:json_annotation/json_annotation.dart';
import 'package:hacker_news_client/src/models/story_type.dart';

part 'job.g.dart';

/// A Job that has been posted to Hacker News
// abstract class Job implements Built<Job, JobBuilder> {
//   Job._();

//   factory Job([updates(JobBuilder b)]) = _$Job;

//   String get by;

//   int get id;

//   int get score;

//   @nullable
//   String get text;

//   DateTime get time;

//   String get title;

//   StoryType get type;

//   @nullable
//   String get url;

//   String toJson() {
//     return json.encode(serializers.serializeWith(Job.serializer, this));
//   }

//   static Job fromJson(String jsonString) {
//     return serializers.deserializeWith(Job.serializer, json.decode(jsonString));
//   }

//   static Serializer<Job> get serializer => _$jobSerializer;
// }
@JsonSerializable(nullable: false)
class Job extends Object with _$JobSerializerMixin {
  final String by;
  final int id;
  final int score;
  final String text;
  final DateTime time;
  final String title;
  final StoryType type;
  final String url;
  Job({
    this.by,
    this.id,
    this.score,
    this.text,
    this.time,
    this.title,
    this.type,
    this.url,
  });
  factory Job.fromJson(Map<String, dynamic> json) => _$JobFromJson(json);
}
