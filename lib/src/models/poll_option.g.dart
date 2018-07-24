// GENERATED CODE - DO NOT MODIFY BY HAND

part of poll_part;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PollOption _$PollOptionFromJson(Map<String, dynamic> json) {
  return new PollOption(
      by: json['by'] as String,
      id: json['id'] as int,
      poll: json['poll'] as int,
      score: json['score'] as int,
      time: DateTime.parse(json['time'] as String),
      text: json['text'] as String,
      type: $enumDecode('StoryType', StoryType.values, json['type'] as String));
}

abstract class _$PollOptionSerializerMixin {
  String get by;
  int get id;
  int get poll;
  int get score;
  String get text;
  DateTime get time;
  StoryType get type;
  Map<String, dynamic> toJson() => <String, dynamic>{
        'by': by,
        'id': id,
        'poll': poll,
        'score': score,
        'text': text,
        'time': time.toIso8601String(),
        'type': type.toString().split('.').last
      };
}
