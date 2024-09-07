import 'package:flutter/material.dart';

class TextFieldCustom extends StatelessWidget {

  final String hintText;
  const TextFieldCustom({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: TextField(
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.black
            ),
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              hintText: hintText,
              hintStyle: const TextStyle(
                color: Colors.grey                
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none
              )
            ),
          ),
        ),
      ],
    );
  }
}