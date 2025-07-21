import 'package:dashboard_app/utils/app_styless.dart';
import 'package:dashboard_app/views/widgets/range_options.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

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


