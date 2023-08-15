import 'package:json_annotation/json_annotation.dart';
import 'package:newsappmvvm/model/user_model.dart';

part 'single_user_response_model.g.dart';

@JsonSerializable()
class SingleUserResponse {
  SingleUserResponse();

  @JsonKey(name: 'data')
  late User user;

  factory SingleUserResponse.fromJson(Map<String, dynamic> json) =>
      _$SingleUserResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SingleUserResponseToJson(this);
}
