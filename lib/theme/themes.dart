import 'package:flutter/material.dart';

class AppTheme {


  ThemeData get def {
    
    return ThemeData.dark().copyWith(
      scaffoldBackgroundColor: const Color.fromARGB(255, 5, 5, 5),
      
    );
    
  }

  // text styles
  static TextStyle title = const TextStyle(
    color: Colors.white,
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );

  // subtitle
  static TextStyle subtitle = title.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.normal,
  );

}