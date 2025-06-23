import 'package:dashboard_app/views/widgets/custom_drawer.dart';
import 'package:flutter/cupertino.dart';

class DashBoardDesktopLayout extends StatelessWidget {
  const DashBoardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: CustomDrawer(),
        ),
        Expanded(
          flex: 3,
          child: Container(),
        ),
        Expanded(
          flex: 2,
          child: Container(),
        ),
      ],
    );
  }
}
