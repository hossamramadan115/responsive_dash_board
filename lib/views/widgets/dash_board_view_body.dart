import 'package:dashboard_app/views/widgets/adaptive_layout.dart';
import 'package:dashboard_app/views/widgets/dash_board_desktop_layout.dart';
import 'package:flutter/cupertino.dart';

class DashBoardViewBody extends StatelessWidget {
  const DashBoardViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return AdbtiveLayout(
      mobileLayout: (context) => SizedBox(),
      tabletLayout: (context) => SizedBox(),
      desktopLayout: (context) => DashBoardDesktopLayout(),
    );
  }
}
