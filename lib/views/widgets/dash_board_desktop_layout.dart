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
          flex: 5,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: AllExpensesAndQuickInvoiceSaction(),
                      ),
                    ),
                    SizedBox(width: 24),
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          SizedBox(height: 40),
                          MyCardAndTransactionHistorySection(),
                          SizedBox(height: 16),
                          IncomeSection(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
