import 'dart:convert';

class Currency {
  double? satis;
  double? alis;
  String? isim;

  Currency({
    this.satis,
    this.alis,
    this.isim,
  });

  Map<String, dynamic> toMap() {
    return {
      'satis': satis,
      'alis': alis,
      'isim': isim,
    };
  }

  factory Currency.fromMap(Map<String, dynamic> map) {
    return Currency(
      satis: double.tryParse(map['satis']),
      alis: double.tryParse(map['alis']),
      isim: map['isim'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Currency.fromJson(String source) => Currency.fromMap(json.decode(source));
}
