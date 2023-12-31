import 'package:json_annotation/json_annotation.dart';

part 'photo.g.dart';

// flutter pub run build_runner build
@JsonSerializable(explicitToJson: true)
class Photo {
  final num id;
  final String url;
  final String tags;
  final num views;

  Photo({
    required this.id,
    required this.url,
    required this.tags,
    required this.views,
  });

  factory Photo.fromJson(Map<String, dynamic> json) => _$PhotoFromJson(json);

  Map<String, dynamic> toJson() => _$PhotoToJson(this);
}
