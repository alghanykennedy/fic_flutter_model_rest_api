import 'dart:convert';

import 'package:logger/logger.dart';

void main(List<String> args) {
  Logger logger = Logger();

  const String jsonString = """
{
    "name": "Sabrina",
    "email": "sabrina@binar.co.id"
}
""";
  Map<String, dynamic> user = jsonDecode(jsonString);

  logger.d('Halo, ${user['name']}!');
  logger.d('Email verification : ${user['email']}');
}
