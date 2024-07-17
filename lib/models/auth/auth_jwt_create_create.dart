class auth_jwt_create_create {
  
  String email;
  String password;

  auth_jwt_create_create({required this.email, required this.password});

  factory auth_jwt_create_create.fromJson(Map<String, dynamic> json) {
    return auth_jwt_create_create(
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