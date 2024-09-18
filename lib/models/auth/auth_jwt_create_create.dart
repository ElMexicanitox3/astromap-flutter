class AuthJwtCreateCreate {
  
  String email;
  String password;

  AuthJwtCreateCreate({required this.email, required this.password});

  factory AuthJwtCreateCreate.fromJson(Map<String, dynamic> json) {
    return AuthJwtCreateCreate(
      email: json['email'],
      password: json['password'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'password': password,
    };
  }

}