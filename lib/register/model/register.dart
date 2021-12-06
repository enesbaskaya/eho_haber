import 'dart:convert';

class Register {
  String? email;
  String? password;

  Register({
    this.email,
    this.password,
  });

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'password': password,
    };
  }

  factory Register.fromMap(Map<String, dynamic> map) {
    return Register(
      email: map['email'],
      password: map['password'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Register.fromJson(String source) => Register.fromMap(json.decode(source));
}
