import 'dart:convert';

class Weather {
  String? day;
  String? description;
  double? degree;
  Weather({
    this.day,
    this.description,
    this.degree,
  });

  Map<String, dynamic> toMap() {
    return {
      'day': day,
      'description': description,
      'degree': degree,
    };
  }

  factory Weather.fromMap(Map<String, dynamic> map) {
    return Weather(
      day: map['day'],
      description: map['description'],
      degree: double.parse(map['degree']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Weather.fromJson(String source) => Weather.fromMap(json.decode(source));
}
