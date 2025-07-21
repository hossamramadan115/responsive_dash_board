import 'package:flutter/material.dart';

import '../../utils/app_styless.dart';

class RangeOptions extends StatelessWidget {
  const RangeOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(
            width: 1,
            color: Color(0xFFF1F1F1),
          ),
        ),
      ),
      child: Row(
        children: [
          Text(
            'Monthly',
            style: AppStyless.styleMedium16(context),
          ),
          SizedBox(width: 18),
          Transform.rotate(
            angle: -1.57079633,
            child: Icon(Icons.arrow_back_ios_new_outlined),
          ),
        ],
      ),
    );
  }
}
