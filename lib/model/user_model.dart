import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable()
class User {
  @JsonKey(name: "id")
  late int id;

  @JsonKey(name: "email")
  late int email;

  @JsonKey(name: "first_name")
  late int firstName;

  @JsonKey(name: "last_name")
  late int lastName;

  @JsonKey(name: "avatar")
  late int avatar;

  User();

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}


    // "data": {
    //     "id": 2,
    //     "email": "janet.weaver@reqres.in",
    //     "first_name": "Janet",
    //     "last_name": "Weaver",
    //     "avatar": "https://reqres.in/img/faces/2-image.jpg"
    // },