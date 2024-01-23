import 'package:json_annotation/json_annotation.dart';
part 'content_result_list.g.dart';

@JsonSerializable()
class ContentResultList {

  ContentResultList({required this.resultList});

  final List<Map<int, dynamic>> resultList;

  factory ContentResultList.fromJson(Map<String, dynamic> json) =>
      _$ContentResultListFromJson(json);

  Map<String, dynamic> toJson() => _$ContentResultListToJson(this);
}
