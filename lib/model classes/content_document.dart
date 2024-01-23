import 'package:json_annotation/json_annotation.dart';

part 'content_document.g.dart';

@JsonSerializable()
class ContentDocument {

  String? title;

  @JsonKey(name : 'start_date')
  String startDate;

  @JsonKey(name : '_id')
  String id;

  ContentDocument({
    required this.title,
    required this.startDate,
    required this.id,
  });

  factory ContentDocument.fromJson(Map<String, dynamic> json) {
    return _$ContentDocumentFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ContentDocumentToJson(this);
}