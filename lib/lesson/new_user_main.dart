import 'dart:convert';

import 'package:fic_flutter_model_rest_api/lesson/new_user.dart';
import 'package:logger/logger.dart';

void main() {
  Logger logger = Logger();

  // Deserialization
  String jsonStr = '''{
    "name": "Alghany",
    "email": "alghany@jagoflutter.com",
    "address": "Bandung",
    "registration_date_millis": 123232323231
  }''';
  Map<String, dynamic> jsonMap = jsonDecode(jsonStr);
  NewUser newUser = NewUser.fromJson(jsonMap);

  logger.i(newUser.name); // Output: Alghany
  logger.i(newUser.email); // Output: alghany@jagoflutter.com
  logger.i(newUser.address); // Output: Bandung
  logger.i(newUser.registrationDateMillis); // Output: 123232323231

  // Serialization
  Map<String, dynamic> newJsonMap = newUser.toJson();
  String newJsonStr = jsonEncode(newJsonMap);

  logger.d(
      newJsonStr); // Output: {"name":"Alghany", "email":"alghany@jagiflutter.com", "registration_date_millis":123232323231}
}
