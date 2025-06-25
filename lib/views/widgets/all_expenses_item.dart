import 'package:dashboard_app/models/all_expenses_item_model.dart';
import 'package:dashboard_app/utils/app_styless.dart';
import 'package:dashboard_app/views/widgets/all_expenses_item_header.dart';
import 'package:flutter/material.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({super.key, required this.itemModel});
  final AllExpensesItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(
            width: 1,
            color: Color(0xFFF1F1F1),
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            image: itemModel.image,
          ),
          const SizedBox(height: 34),
          Text(
            itemModel.title,
            style: AppStyless.styleMduim16,
          ),
          const SizedBox(height: 8),
          Text(
            itemModel.date,
            style: AppStyless.styleRegular14,
          ),
          const SizedBox(height: 16),
          Text(
            itemModel.price,
            style: AppStyless.styleSemiBold24,
          ),
        ],
      ),
    );
  }
}
