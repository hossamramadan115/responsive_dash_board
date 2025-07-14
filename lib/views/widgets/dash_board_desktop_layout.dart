import 'package:dashboard_app/views/widgets/all_expenses_and_quick_invoice_saction.dart';
import 'package:dashboard_app/views/widgets/custom_drawer.dart';
import 'package:dashboard_app/views/widgets/income_section.dart';
import 'package:dashboard_app/views/widgets/my_card_and_transaction_history_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashBoardDesktopLayout extends StatelessWidget {
  const DashBoardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: CustomDrawer(),
        ),
        SizedBox(width: 24),
        Expanded(
          flex: 3,
          child: AllExpensesAndQuickInvoiceSaction(),
        ),
        SizedBox(width: 24),
        Expanded(
          flex: 2,
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(child: SizedBox(height: 40)),
              SliverToBoxAdapter(child: MyCardAndTransactionHistorySection()),
              SliverToBoxAdapter(child: SizedBox(height: 16)),
              SliverFillRemaining(child: IncomeSection()),
            ],
          ),
        ),
      ],
    );
  }
}
