import 'package:flutter/material.dart';

class TextFieldCustom extends StatelessWidget {

  final String hintText;
  const TextFieldCustom({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black
          ),
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            hintText: hintText,
            hintStyle: TextStyle(
              color: Colors.grey                
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide.none
            )
          ),
        ),
      ],
    );
  }
}