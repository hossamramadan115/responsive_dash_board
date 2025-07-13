import 'package:dashboard_app/views/widgets/income_chart.dart';
import 'package:dashboard_app/views/widgets/income_section_header.dart';
import 'package:dashboard_app/views/widgets/range_options.dart';
import 'package:flutter/material.dart';

import '../../utils/app_styless.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       IncomeSectionHeader(),
       Expanded(
         child: Row(children: [
          Expanded(child: IncomeChart()),
         ],),
       )
      ],
    );
  }
}
