import 'package:dashboard_app/models/all_expenses_item_model.dart';
import 'package:dashboard_app/views/widgets/active_and_inactive_all_expenses_item.dart';
import 'package:flutter/material.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({
    super.key,
    required this.itemModel,
    required this.isActive,
  });

  final AllExpensesItemModel itemModel;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      transitionBuilder: (child, animation) {
        return FadeTransition(
          opacity: animation,
          child: ScaleTransition(
            scale: animation,
            child: child,
          ),
        );
      },
      child: isActive
          ? ActiveAllExpensesItem(
              key: const ValueKey('active'),
              itemModel: itemModel,
            )
          : InActiveAllExpensesItem(
              key: const ValueKey('inactive'),
              itemModel: itemModel,
            ),
    );
  }
}
