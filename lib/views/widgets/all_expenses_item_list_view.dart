import 'package:dashboard_app/views/widgets/all_expenses_item.dart';
import 'package:flutter/material.dart';

import '../../models/all_expenses_item_model.dart';
import '../../utils/app_images.dart';

class AllExpensesItemListView extends StatelessWidget {
  const AllExpensesItemListView({super.key});
  static const items = [
    AllExpensesItemModel(
      image: Assets.imagesBalance,
      title: 'Balance',
      date: 'April 2022',
      price: r'$12,520',
    ),
    AllExpensesItemModel(
      image: Assets.imagesIncome,
      title: 'Income',
      date: 'April 2022',
      price: r'$12,520',
    ),
    AllExpensesItemModel(
      image: Assets.imagesExpenses,
      title: 'Expense',
      date: 'April 2022',
      price: r'$12,520',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children:
          // items.map((e) => Expanded(child: AllExpensesItem(itemModel: e))).toList(),
          items.asMap().entries.map((e) {
        int index = e.key;
        var items = e.value;
        if (index == 1) {
          return Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: AllExpensesItem(itemModel: items),
            ),
          );
        } else {
          return Expanded(child: AllExpensesItem(itemModel: items));
        }
      }).toList(),
    );
  }
}
