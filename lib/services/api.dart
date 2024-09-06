import 'dart:convert';

import 'package:http/http.dart' as http;


class Api {


  //method GET
  // Método para realizar una petición POST
  Future<void> post(String endpoint, Map<String, dynamic> data) async {
    
    final response = await http.post(
      Uri.parse(endpoint),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(data),
    );

  }

}