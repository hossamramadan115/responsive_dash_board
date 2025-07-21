import 'package:dashboard_app/models/all_expenses_item_model.dart';
import 'package:dashboard_app/views/widgets/all_expenses_item_header.dart';
import 'package:flutter/material.dart';

import '../../utils/app_styless.dart';

class InActiveAllExpensesItem extends StatelessWidget {
  const InActiveAllExpensesItem({
    super.key,
    required this.itemModel,
  });

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
            style: AppStyless.styleMedium16(context),
          ),
          const SizedBox(height: 8),
          Text(
            itemModel.date,
            style: AppStyless.styleRegular14(context),
          ),
          const SizedBox(height: 16),
          Text(
            itemModel.price,
            style: AppStyless.styleSemiBold24(context),
          ),
        ],
      ),
    );
  }
}

class ActiveAllExpensesItem extends StatelessWidget {
  const ActiveAllExpensesItem({
    super.key,
    required this.itemModel,
  });

  final AllExpensesItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      padding: const EdgeInsets.all(16),
      decoration: ShapeDecoration(
        color: const Color(0xFF4DB7F2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),

      child: Container(
        padding: EdgeInsets.all(16),
        decoration: ShapeDecoration(
          color: Color(0xFF4DB7F2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AllExpensesItemHeader(
              imageBackground: Colors.white.withOpacity(0.10000000749011612),
              imageColor: Colors.white,
              image: itemModel.image,
            ),
            const SizedBox(height: 34),
            Text(
              itemModel.title,
              style: AppStyless.styleMedium16(context).copyWith(
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              itemModel.date,
              style: AppStyless.styleRegular14(context).copyWith(
                color: Color(0xffFAFAFA),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              itemModel.price,
              style: AppStyless.styleSemiBold24(context).copyWith(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
