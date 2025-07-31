import 'dart:developer';

import 'package:dashboard_app/views/widgets/detailed_income_chart.dart';
import 'package:dashboard_app/views/widgets/income_chart.dart';
import 'package:dashboard_app/views/widgets/income_details.dart';
import 'package:flutter/material.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    log('📱 عرض الشاشة: $width');
    // print('عرض الشاشة: ${width.toString()} بيكسل');
    return width >= 1102 && width <= 1275
        ? DetailedIncomeChart()
        : Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: IncomeChart(),
              ),
              Expanded(
                flex: 2,
                child: IncomeDetails(),
              ),
            ],
          );
  }
}
