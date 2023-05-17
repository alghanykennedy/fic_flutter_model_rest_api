import 'dart:convert';

import 'package:fic_flutter_model_rest_api/lesson/new_user.dart';

void main() {
  // Deserialization
  String jsonStr = '''{
    "name": "Alghany",
    "email": "alghany@jagoflutter.com",
    "address": "Bandung",
    "registration_date_millis": 123232323231
  }''';
  Map<String, dynamic> jsonMap = jsonDecode(jsonStr);
  NewUser newUser = NewUser.fromJson(jsonMap);

  print(newUser.name); // Output: Alghany
  print(newUser.email); // Output: alghany@jagoflutter.com
  print(newUser.address); // Output: Bandung
  print(newUser.registrationDateMillis); // Output: 123232323231

  // Serialization
  Map<String, dynamic> newJsonMap = newUser.toJson();
  String newJsonStr = jsonEncode(newJsonMap);

  print(
      newJsonStr); // Output: {"name":"Alghany", "email":"alghany@jagiflutter.com", "registration_date_millis":123232323231}
}
