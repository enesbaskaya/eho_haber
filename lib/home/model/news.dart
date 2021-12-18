import 'dart:convert';

class News {
  String? name;
  String? description;
  String? image;
  News({
    this.name,
    this.description,
    this.image,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'description': description,
      'image': image,
    };
  }

  factory News.fromMap(Map<String, dynamic> map) {
    return News(
      name: map['name'],
      description: map['description'],
      image: map['image'],
    );
  }

  String toJson() => json.encode(toMap());

  factory News.fromJson(String source) => News.fromMap(json.decode(source));
}
