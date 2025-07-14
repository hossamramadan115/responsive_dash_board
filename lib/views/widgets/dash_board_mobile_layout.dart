import 'package:dashboard_app/views/widgets/all_expenses_and_quick_invoice_saction.dart';
import 'package:dashboard_app/views/widgets/income_section.dart';
import 'package:dashboard_app/views/widgets/my_card_and_transaction_history_section.dart';
import 'package:flutter/material.dart';

class DashBoardMobileLayout extends StatelessWidget {
  const DashBoardMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          AllExpensesAndQuickInvoiceSaction(),
          SizedBox(height: 16),
          MyCardAndTransactionHistorySection(),
          SizedBox(height: 16),
          IncomeSection(),
        ],
      ),
    );
  }
}
