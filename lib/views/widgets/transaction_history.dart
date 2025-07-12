import 'package:dashboard_app/utils/app_styless.dart';
import 'package:dashboard_app/views/widgets/transaction_history_list_view.dart';
import 'package:flutter/cupertino.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Transaction History',
              style: AppStyless.styleSemiBold20,
            ),
            Text(
              'See all',
              style: AppStyless.styleMduim16.copyWith(
                color: Color(0xff4EB7F2),
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
        Text(
          '13 April 2022',
          style: TextStyle(
              color: Color(0xFFAAAAAA),
              fontFamily: 'Montserrat',
              fontSize: 16,
              fontWeight: FontWeight.w500,
              height: 0),
        ),
        SizedBox(height: 16),
        TransactionHistoryListView(),
      ],
    );
  }
}
