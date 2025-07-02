import 'package:dashboard_app/models/user_info_model.dart';
import 'package:dashboard_app/utils/app_styless.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({
    super.key,
    required this.userInfoModel,
  });
  final UserInfoModel userInfoModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Color(0xFFFAFAFA),
      child: ListTile(
        leading: SvgPicture.asset(userInfoModel.image),
        title: Text(
          userInfoModel.title,
          style: AppStyless.styleSemiBold16,
        ),
        subtitle: Text(
          userInfoModel.subTitle,
          style: AppStyless.styleRegular12,
        ),
      ),
    );
  }
}
