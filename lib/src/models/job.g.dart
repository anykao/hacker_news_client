// GENERATED CODE - DO NOT MODIFY BY HAND

part of job;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Job _$JobFromJson(Map<String, dynamic> json) {
  return new Job(
      by: json['by'] as String,
      id: json['id'] as int,
      score: json['score'] as int,
      text: json['text'] as String,
      time: DateTime.parse(json['time'] as String),
      title: json['title'] as String,
      type: $enumDecode('StoryType', StoryType.values, json['type'] as String),
      url: json['url'] as String);
}

abstract class _$JobSerializerMixin {
  String get by;
  int get id;
  int get score;
  String get text;
  DateTime get time;
  String get title;
  StoryType get type;
  String get url;
  Map<String, dynamic> toJson() => <String, dynamic>{
        'by': by,
        'id': id,
        'score': score,
        'text': text,
        'time': time.toIso8601String(),
        'title': title,
        'type': type.toString().split('.').last,
        'url': url
      };
}
