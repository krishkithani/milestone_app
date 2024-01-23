// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'milestone_document.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MilestoneDocument _$MilestoneDocumentFromJson(Map<String, dynamic> json) =>
    MilestoneDocument(
      id: json['_id'] as String,
      name: json['name'] as String?,
      startDate: json['start_date'] as String?,
      endDate: json['end_date'] as String?,
    );

Map<String, dynamic> _$MilestoneDocumentToJson(MilestoneDocument instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'start_date': instance.startDate,
      'end_date': instance.endDate,
    };
