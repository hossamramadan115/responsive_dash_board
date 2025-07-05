import 'package:dashboard_app/views/widgets/custom_back_ground_container.dart';
import 'package:dashboard_app/views/widgets/latest_transaction.dart';
import 'package:dashboard_app/views/widgets/quick_invoic_form.dart';
import 'package:dashboard_app/views/widgets/quick_invoice_header.dart';
import 'package:flutter/material.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackGroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          LatestTransaction(),
          Divider(
            color: Color(0xFF4DB7F2),
            height: 48,
          ),
          QuickInvoicForm(),
        ],
      ),
    );
  }
}
