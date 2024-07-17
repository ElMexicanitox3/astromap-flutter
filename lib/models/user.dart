class user {
  
  final String email;
  final String password;

  user({required this.email, required this.password});

  factory user.fromJson(Map<String, dynamic> json) {
    return user(
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