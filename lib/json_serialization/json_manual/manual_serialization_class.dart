import 'dart:convert';

import 'package:logger/logger.dart';

import 'user.dart';

void main(List<String> args) {
  Logger logger = Logger();

  const String jsonString = """
{
    "name": "Sabrina",
    "email": "sabrina@binar.co.id"
}
""";
  Map<String, dynamic> userMap = jsonDecode(jsonString);
  var user = User.fromJson(userMap);

  logger.d('Halo, ${user.name}!');
  logger.e('Email verification link: ${user.email}');

  String json = jsonEncode(user);

  logger.i('String json: $json');
}
