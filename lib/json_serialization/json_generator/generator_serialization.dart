import 'dart:convert';

import 'package:logger/logger.dart';

import 'user.dart';

void main(List<String> args) {
  Logger logger = Logger();

  const String jsonString = """
{
    "name": "Rozak",
    "email": "rozak@jagoflutter.com",
    "registration_date_millis": 123232323231
}
""";
  Map<String, dynamic> userMap = jsonDecode(jsonString);
  var user = User.fromJson(userMap);

  logger.i('Halo, ${user.name}!');
  logger.e('Email verification link: ${user.email}');

  String json = jsonEncode(user);

  logger.d('String json: $json');
}
