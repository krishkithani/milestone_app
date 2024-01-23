import 'package:json_annotation/json_annotation.dart';

part 'milestone_document.g.dart';

@JsonSerializable()
class MilestoneDocument {

  @JsonKey(name : '_id' )
  String id;
  
  String? name;
  
  @JsonKey(name : 'start_date')
  String? startDate;
  
  @JsonKey(name : 'end_date')
  String? endDate;



  MilestoneDocument({
    required this.id,
    required this.name,
    required this.startDate,
    required this.endDate,
  });

  factory MilestoneDocument.fromJson(Map<String, dynamic> json) {
    return _$MilestoneDocumentFromJson(json);
  }


  Map<String, dynamic> toJson() => _$MilestoneDocumentToJson(this);
}
