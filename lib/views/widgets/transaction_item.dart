import 'package:dashboard_app/models/transaction_model.dart';
import 'package:dashboard_app/utils/app_styless.dart';
import 'package:flutter/material.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.transactionModel});
  final TransactionModel transactionModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Color(0xfffafafa),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        title: Text(
          transactionModel.title,
          style: AppStyless.styleSemiBold16,
        ),
        subtitle: Text(
          transactionModel.date,
          style: AppStyless.styleRegular16.copyWith(
            color: Color(0xFFAAAAAA),
          ),
        ),
        trailing: Text(
          transactionModel.amount,
          style: AppStyless.styleSemiBold20.copyWith(
            color: transactionModel.isWithdraw
                ? Color(0xfff3735e)
                : Color(0xff7cd87a),
          ),
        ),
      ),
    );
  }
}
