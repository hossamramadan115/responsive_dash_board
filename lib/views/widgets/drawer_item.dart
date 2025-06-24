import 'package:dashboard_app/models/drawer_item_model.dart';
import 'package:dashboard_app/views/widgets/active_and_inactive_drawer_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {super.key, required this.drawerItemModel, required this.isactive});
  final DrawerItemModel drawerItemModel;
  final bool isactive;

  @override
  Widget build(BuildContext context) {
    return isactive
        ? ActiveDrawerItem(drawerItemModel: drawerItemModel)
        : InActiveDrawerItem(drawerItemModel: drawerItemModel);
  }
}

