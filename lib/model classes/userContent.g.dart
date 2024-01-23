// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'userContent.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserContent _$UserContentFromJson(Map<String, dynamic> json) => UserContent(
      bookmark: json['bookmark'] as bool?,
      id: json['_id'] as String,
      contentDocument: ContentDocument.fromJson(
          json['content_document'] as Map<String, dynamic>),
      milestoneId: json['milestone_id'] as String?,
      userMilestoneDocument: UserMilestoneDocument.fromJson(
          json['user_milestone_document'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserContentToJson(UserContent instance) =>
    <String, dynamic>{
      'bookmark': instance.bookmark,
      '_id': instance.id,
      'content_document': instance.contentDocument.toJson(),
      'milestone_id': instance.milestoneId,
      'user_milestone_document': instance.userMilestoneDocument.toJson(),
    };
