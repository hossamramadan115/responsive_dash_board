import 'package:dashboard_app/models/user_info_model.dart';
import 'package:dashboard_app/views/widgets/user_info_list_tile.dart';
import 'package:flutter/material.dart';

import '../../utils/app_images.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});
  static const items = [
    UserInfoModel(
      image: Assets.imagesAvatar1,
      title: 'Lekan Okeowo',
      subTitle: 'demo@gmail.com',
    ),
    UserInfoModel(
      image: Assets.imagesAvatar2,
      title: 'Lekan Okeowo',
      subTitle: 'demo@gmail.com',
    ),
    UserInfoModel(
      image: Assets.imagesAvatar3,
      title: 'Lekan Okeowo',
      subTitle: 'demo@gmail.com',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items
            .map(
              (e) => IntrinsicWidth(child: UserInfoListTile(userInfoModel: e)),
            )
            .toList(),
      ),
    );
  }
}

// class LatestTransactionListView extends StatelessWidget {
//   const LatestTransactionListView({super.key});
  // static const items = [
  //   UserInfoModel(
  //     image: Assets.imagesAvatar1,
  //     title: 'Lekan Okeowo',
  //     subTitle: 'demo@gmail.com',
  //   ),
  //   UserInfoModel(
  //     image: Assets.imagesAvatar2,
  //     title: 'Lekan Okeowo',
  //     subTitle: 'demo@gmail.com',
  //   ),
  //   UserInfoModel(
  //     image: Assets.imagesAvatar3,
  //     title: 'Lekan Okeowo',
  //     subTitle: 'demo@gmail.com',
  //   )
  // ];
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 70,
//       child: ListView.builder(
//           scrollDirection: Axis.horizontal,
//           itemCount: items.length,
//           itemBuilder: (context, index) {
//             return IntrinsicWidth(
//               child: UserInfoListTile(
//                 userInfoModel: items[index],
//               ),
//             );
//           }),
//     );
//   }
// }
