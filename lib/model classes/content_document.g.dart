// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content_document.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContentDocument _$ContentDocumentFromJson(Map<String, dynamic> json) =>
    ContentDocument(
      title: json['title'] as String?,
      startDate: json['start_date'] as String,
      id: json['_id'] as String,
    );

Map<String, dynamic> _$ContentDocumentToJson(ContentDocument instance) =>
    <String, dynamic>{
      'title': instance.title,
      'start_date': instance.startDate,
      '_id': instance.id,
    };
