import 'package:dashboard_app/models/transaction_model.dart';
import 'package:dashboard_app/views/widgets/transaction_item.dart';
import 'package:flutter/material.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});
  static const items = [
    TransactionModel(
      title: 'Cash Withdrawel',
      date: '13 April 2022',
      amount: r'$20,129',
      isWithdraw: true,
    ),
    TransactionModel(
      title: 'Landing page project',
      date: '13 April 2022',
      amount: r'$20,129',
      isWithdraw: false,
    ),
    TransactionModel(
      title: 'Juni Mobile App project',
      date: '13 April 2022',
      amount: r'$20,129',
      isWithdraw: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((e) => TransactionItem(transactionModel: e)).toList(),
    );
  }
}
