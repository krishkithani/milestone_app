// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content_result_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContentResultList _$ContentResultListFromJson(Map<String, dynamic> json) =>
    ContentResultList(
      resultList: (json['resultList'] as List<dynamic>)
          .map((e) => (e as Map<String, dynamic>).map(
                (k, e) => MapEntry(int.parse(k), e),
              ))
          .toList(),
    );

Map<String, dynamic> _$ContentResultListToJson(ContentResultList instance) =>
    <String, dynamic>{
      'resultList': instance.resultList
          .map((e) => e.map((k, e) => MapEntry(k.toString(), e)))
          .toList(),
    };
