import 'package:dashboard_app/utils/app_styless.dart';
import 'package:dashboard_app/views/widgets/latest_transaction_list_view.dart';
import 'package:flutter/material.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest Transaction',
          style: AppStyless.styleMedium16(context),
        ),
        SizedBox(height: 16),
        LatestTransactionListView(),
      ],
    );
  }
}
