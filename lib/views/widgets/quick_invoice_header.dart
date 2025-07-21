import 'package:dashboard_app/utils/app_styless.dart';
import 'package:flutter/material.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Quick Invoice',
          style: AppStyless.styleSemiBold20(context),
        ),
        Spacer(),
        Container(
          width: 48,
          height: 48,
          color: Color(0xFFFAFAFA),
          child: const Icon(
            Icons.add,
            color: Color(0xff4EB7F2),
          ),
        ),
      ],
    );
  }
}
