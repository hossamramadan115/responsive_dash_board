import 'package:dashboard_app/views/widgets/all_expense.dart';
import 'package:dashboard_app/views/widgets/quick_invoice.dart';
import 'package:flutter/material.dart';

class AllExpensesAndQuickInvoiceSaction extends StatelessWidget {
  const AllExpensesAndQuickInvoiceSaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 40),
        const AllExpenses(),
        SizedBox(height: 24),
        const QuickInvoice(),
      ],
    );
    //  CustomScrollView(
    //   slivers: [
    //     SliverToBoxAdapter(child: const SizedBox(height: 40)),
    //     SliverToBoxAdapter(child: const AllExpenses()),
    //     SliverToBoxAdapter(child: const SizedBox(height: 24)),
    //     SliverToBoxAdapter(child: const QuickInvoice()),
    //   ],
    // );
  }
}
