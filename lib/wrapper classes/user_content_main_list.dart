



import 'package:json_annotation/json_annotation.dart';
import 'package:milestone_app/model%20classes/userContent.dart';
part 'user_content_main_list.g.dart';

@JsonSerializable(explicitToJson: true)
class UserContentMainList{
  UserContentMainList({
    required this.userContent
  }) ;

  @JsonKey(name : 'user_content')
  final Map<String,dynamic> userContent;


  factory UserContentMainList.fromJson(Map<String, dynamic> json) =>
      _$UserContentMainListFromJson(json);

  Map<String, dynamic> toJson() => _$UserContentMainListToJson(this);


}