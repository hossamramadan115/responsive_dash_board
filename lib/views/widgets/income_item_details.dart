import 'package:dashboard_app/models/items_details_model.dart';
import 'package:dashboard_app/utils/app_styless.dart';
import 'package:flutter/material.dart';

class IncomeItemDetails extends StatelessWidget {
  const IncomeItemDetails({super.key, required this.itemsDetailsModel});
  final ItemsDetailsModel itemsDetailsModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          shape: OvalBorder(),
          color: itemsDetailsModel.color,
        ),
      ),
      title: Text(
        itemsDetailsModel.title,
        style: AppStyless.styleRegular16(context),
      ),
      trailing: Text(
        itemsDetailsModel.value,
        style: AppStyless.styleMedium16(context).copyWith(color: Color(0xff208bc7)),
      ),
    );
  }
}
