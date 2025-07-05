import 'package:dashboard_app/utils/app_styless.dart';
import 'package:flutter/material.dart';

class CustomTexField extends StatelessWidget {
  const CustomTexField({super.key, required this.hint});
  final String hint;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: hint,
          hintStyle:
              AppStyless.styleRegular16.copyWith(color: Color(0xFFAAAAAA)),
          filled: true,
          fillColor: Color(0xfffafafa),
          border: BuildBorder(),
          enabledBorder: BuildBorder(),
          focusedBorder: BuildBorder()),
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
