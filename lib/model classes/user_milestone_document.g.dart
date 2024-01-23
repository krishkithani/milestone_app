// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_milestone_document.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserMilestoneDocument _$UserMilestoneDocumentFromJson(
        Map<String, dynamic> json) =>
    UserMilestoneDocument(
      id: json['_id'] as String,
      milestoneDocument: MilestoneDocument.fromJson(
          json['milestone_document'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserMilestoneDocumentToJson(
        UserMilestoneDocument instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'milestone_document': instance.milestoneDocument,
    };
