import 'package:dashboard_app/views/widgets/custom_back_ground_container.dart';
import 'package:dashboard_app/views/widgets/income_chart.dart';
import 'package:dashboard_app/views/widgets/income_details.dart';
import 'package:dashboard_app/views/widgets/income_section_header.dart';
import 'package:flutter/material.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackGroundContainer(
      child: Column(
        children: [
          IncomeSectionHeader(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
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
          )
        ],
      ),
    );
  }
}
