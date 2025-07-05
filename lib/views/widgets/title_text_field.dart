import 'package:dashboard_app/utils/app_styless.dart';
import 'package:dashboard_app/views/widgets/custom_tex_field.dart';
import 'package:flutter/material.dart';

class TitleTextField extends StatelessWidget {
  const TitleTextField({super.key, required this.title, required this.hint});
  final String title, hint;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppStyless.styleSemiBold16,
        ),
        CustomTexField(hint: hint),
      ],
    );
  }
}
