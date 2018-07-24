// GENERATED CODE - DO NOT MODIFY BY HAND

part of summary;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Summary _$SummaryFromJson(Map<String, dynamic> json) {
  return new Summary(
      by: json['by'] as String,
      descendants: json['descendants'] as int,
      id: json['id'] as int,
      kids: (json['kids'] as List).map((e) => e as int).toList(),
      score: json['score'] as int,
      time: DateTime.parse(json['time'] as String),
      title: json['title'] as String,
      type: $enumDecode('StoryType', StoryType.values, json['type'] as String),
      url: json['url'] as String);
}

abstract class _$SummarySerializerMixin {
  String get by;
  int get descendants;
  int get id;
  List<int> get kids;
  int get score;
  DateTime get time;
  String get title;
  StoryType get type;
  String get url;
  Map<String, dynamic> toJson() => <String, dynamic>{
        'by': by,
        'descendants': descendants,
        'id': id,
        'kids': kids,
        'score': score,
        'time': time.toIso8601String(),
        'title': title,
        'type': type.toString().split('.').last,
        'url': url
      };
}
