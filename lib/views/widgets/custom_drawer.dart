import 'package:dashboard_app/models/drawer_item_model.dart';
import 'package:dashboard_app/utils/app_images.dart';
import 'package:dashboard_app/views/widgets/active_and_inactive_drawer_item.dart';
import 'package:dashboard_app/views/widgets/drawer_item_list_view.dart';
import 'package:dashboard_app/views/widgets/user_info_list_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              image: Assets.imagesAvatar3,
              title: 'Lekan Okeowo',
              subTitle: 'demo@gmail.com',
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 8)),
          DrawerItemListView(),
          SliverFillRemaining(
            child: Column(
              children: [
                Expanded(child: SizedBox()),
                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                      image: Assets.imagesSettings, title: 'Settings system'),
                ),
                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                      image: Assets.imagesLogout, title: 'Logout account'),
                ),
                SizedBox(height: 48),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
