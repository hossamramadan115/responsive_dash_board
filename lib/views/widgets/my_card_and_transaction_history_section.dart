import 'package:dashboard_app/views/widgets/custom_back_ground_container.dart';
import 'package:dashboard_app/views/widgets/my_cards_section.dart';
import 'package:dashboard_app/views/widgets/transaction_history.dart';
import 'package:flutter/material.dart';

class MyCardAndTransactionHistorySection extends StatelessWidget {
  const MyCardAndTransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackGroundContainer(
      child: Column(
        children: [
          MyCardsSection(),
          Divider(
            height: 40,
            color: Color(0xfff1f1f1),
          ),
          TransactionHistory(),
        ],
      ),
    );
  }
}
