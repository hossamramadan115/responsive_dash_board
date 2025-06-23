import 'package:dashboard_app/utils/app_styless.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });
  final String image, title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Color(0xFFFAFAFA),
      child: ListTile(
        leading: SvgPicture.asset(image),
        title: Text(
          title,
          style: AppStyless.styleSemiBold16,
        ),
        subtitle: Text(
          subTitle,
          style: AppStyless.styleRegular12,
        ),
      ),
    );
  }
}
