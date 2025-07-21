import 'package:dashboard_app/views/widgets/range_options.dart';
import 'package:flutter/material.dart';

import '../../utils/app_styless.dart';

class IncomeSectionHeader extends StatelessWidget {
  const IncomeSectionHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'All Expenses',
          style: AppStyless.styleSemiBold20(context),
        ),
        Expanded(child: SizedBox()),
        RangeOptions(),
      ],
    );
  }
}
