import 'package:json_annotation/json_annotation.dart';
import 'package:milestone_app/model%20classes/user_milestone_document.dart';

import 'content_document.dart';

part 'userContent.g.dart';

@JsonSerializable(explicitToJson: true)
class UserContent {

 // @JsonKey(defaultValue: false)
  bool? bookmark;

  @JsonKey(name : '_id')
  String id;

  @JsonKey(name : 'content_document')
  ContentDocument contentDocument;

  @JsonKey( name : 'milestone_id')
  String? milestoneId;

  @JsonKey(name:  'user_milestone_document')
  UserMilestoneDocument userMilestoneDocument;


  UserContent({
    required this.bookmark,
    required this.id,
    required this.contentDocument,
    required this.milestoneId,
    required this.userMilestoneDocument,
  });

  factory UserContent.fromJson(Map<String, dynamic> json) {
    return _$UserContentFromJson(json);}

  Map<String, dynamic> toJson() => _$UserContentToJson(this);
}








