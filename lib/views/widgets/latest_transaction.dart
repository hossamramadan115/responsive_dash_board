import 'package:dashboard_app/utils/app_styless.dart';
import 'package:dashboard_app/views/widgets/latest_transaction_list_view.dart';
import 'package:flutter/material.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Latest Transaction',
          style: AppStyless.styleMduim16,
        ),
        SizedBox(height: 16),
        LatestTransactionListView(),
      ],
    );
  }
}
