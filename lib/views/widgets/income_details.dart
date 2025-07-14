import 'package:dashboard_app/models/items_details_model.dart';
import 'package:dashboard_app/views/widgets/income_item_details.dart';
import 'package:flutter/material.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});
  static const items = [
    ItemsDetailsModel(
        color: Color(0xff208bc7), title: 'Design Service', value: '%40'),
    ItemsDetailsModel(
        color: Color(0xff4db7f2), title: 'Design Product', value: '%25'),
    ItemsDetailsModel(
        color: Color(0xff064060), title: 'Product royal', value: '%20'),
    ItemsDetailsModel(color: Color(0xffe2decd), title: 'Others', value: '%22'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children:
          items.map((e) => IncomeItemDetails(itemsDetailsModel: e)).toList(),
    );
  }
}
