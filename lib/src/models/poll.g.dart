// GENERATED CODE - DO NOT MODIFY BY HAND

part of poll;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Poll _$PollFromJson(Map<String, dynamic> json) {
  return new Poll(
      by: json['by'] as String,
      descendants: json['descendants'] as int,
      id: json['id'] as int,
      kids: (json['kids'] as List).map((e) => e as int).toList(),
      parts: (json['parts'] as List).map((e) => e as int).toList(),
      time: DateTime.parse(json['time'] as String),
      title: json['title'] as String,
      type: $enumDecode('StoryType', StoryType.values, json['type'] as String),
      score: json['score'] as int,
      comments: (json['comments'] as List)
          .map((e) => new Comment.fromJson(e as Map<String, dynamic>))
          .toList());
}

abstract class _$PollSerializerMixin {
  String get by;
  int get descendants;
  int get id;
  List<int> get kids;
  List<Comment> get comments;
  List<int> get parts;
  int get score;
  DateTime get time;
  String get title;
  StoryType get type;
  Map<String, dynamic> toJson() => <String, dynamic>{
        'by': by,
        'descendants': descendants,
        'id': id,
        'kids': kids,
        'comments': comments,
        'parts': parts,
        'score': score,
        'time': time.toIso8601String(),
        'title': title,
        'type': type.toString().split('.').last
      };
}
