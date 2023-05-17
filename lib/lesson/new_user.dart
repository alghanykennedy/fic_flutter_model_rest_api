import 'package:json_annotation/json_annotation.dart';

part 'new_user.g.dart';

@JsonSerializable()
class NewUser {
  final String name;
  final String email;
  final String address;
  @JsonKey(name: 'registration_date_millis')
  final int registrationDateMillis;

  NewUser(this.name, this.email, this.address, this.registrationDateMillis);

  factory NewUser.fromJson(Map<String, dynamic> json) =>
      _$NewUserFromJson(json);

  Map<String, dynamic> toJson() => _$NewUserToJson(this);
}
