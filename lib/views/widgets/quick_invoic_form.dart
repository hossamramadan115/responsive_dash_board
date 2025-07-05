import 'package:dashboard_app/views/widgets/custom_button.dart';
import 'package:dashboard_app/views/widgets/title_text_field.dart';
import 'package:flutter/material.dart';

class QuickInvoicForm extends StatelessWidget {
  const QuickInvoicForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                  title: 'Customer name', hint: 'Type Customer name'),
            ),
            SizedBox(width: 16),
            Expanded(
              child: TitleTextField(
                  title: 'Customer email', hint: 'type customer email'),
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                  title: 'Item name', hint: 'Type Customer name'),
            ),
            SizedBox(width: 16),
            Expanded(
              child: TitleTextField(title: 'Item mount', hint: 'USD'),
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                text: 'Add more details',
                textColor: Color(0xff4db7f2),
                backgroundColor: Colors.white,
              ),
            ),
            SizedBox(width: 24),
            Expanded(
              child: CustomButton(
                text: 'Send Mony',
                backgroundColor: Color(0xff4db7f2),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
