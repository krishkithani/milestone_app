import 'package:json_annotation/json_annotation.dart';

import 'milestone_document.dart';
part 'user_milestone_document.g.dart';

@JsonSerializable()
class UserMilestoneDocument {

  @JsonKey(name: '_id')
  String id;

  @JsonKey(name: 'milestone_document')
  MilestoneDocument milestoneDocument;

  UserMilestoneDocument({
    required this.id,
    required this.milestoneDocument,
  });

  factory UserMilestoneDocument.fromJson(Map<String, dynamic> json) {
    return _$UserMilestoneDocumentFromJson(json);}

  Map<String, dynamic> toJson() => _$UserMilestoneDocumentToJson(this);
}
