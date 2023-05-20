// {
// "id": 1,
// "name": "nuevo",
// "image": "https://picsum.photos/640/640?r=4368",
// "creationAt": "2023-05-16T05:37:28.000Z",
// "updatedAt": "2023-05-16T12:23:29.000Z"
// }

import 'dart:convert';

import 'package:logger/logger.dart';

class Category {
  final int id;
  final String name;
  final String image;
  final String creationAt;
  final String updatedAt;
  Category({
    required this.id,
    required this.name,
    required this.image,
    required this.creationAt,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'image': image,
      'creationAt': creationAt,
      'updatedAt': updatedAt,
    };
  }

  factory Category.fromMap(Map<String, dynamic> map) {
    return Category(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
      image: map['image'] ?? '',
      creationAt: map['creationAt'] ?? '',
      updatedAt: map['updatedAt'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Category.fromJson(String source) =>
      Category.fromMap(json.decode(source));
}

void main() {
  Logger logger = Logger();

  String jsonString = '''
{
"id": 1,
"name": "nuevo",
"image": "https://picsum.photos/640/640?r=4368",
"creationAt": "2023-05-16T05:37:28.000Z",
"updatedAt": "2023-05-16T12:23:29.000Z"
}
''';

  final category = Category.fromJson(jsonString);

  logger.d(category.name);
}
