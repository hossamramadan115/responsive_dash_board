import 'package:flutter/material.dart';

class CustomTexField extends StatelessWidget {
  const CustomTexField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0xfffafafa),
        border: BuildBorder(),
        enabledBorder: BuildBorder(),
      ),
    );
  }

  OutlineInputBorder BuildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(
        color: Color(0xfffafafa),
      ),
    );
  }
}
