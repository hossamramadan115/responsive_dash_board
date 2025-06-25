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
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemCount: items.length,
      itemBuilder: (context, index) {
        return AllExpensesItem(
          itemModel: items[index],
        );
      },
    );
  }
}
