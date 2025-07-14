import 'package:dashboard_app/views/widgets/adaptive_layout.dart';
import 'package:dashboard_app/views/widgets/custom_drawer.dart';
import 'package:dashboard_app/views/widgets/dash_board_desktop_layout.dart';
import 'package:dashboard_app/views/widgets/dash_board_mobile_layout.dart';
import 'package:dashboard_app/views/widgets/dash_board_tablet_layout.dart';
import 'package:flutter/material.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF7F9FA),
      appBar: MediaQuery.sizeOf(context).width < 800
          ? AppBar(
              leading: IconButton(
                onPressed: () {
                  scaffoldKey.currentState!.openDrawer();
                },
                icon: Icon(Icons.menu),
              ),
              backgroundColor: Color(0xfffafafa),
              elevation: 0,
            )
          : null,
      drawer: MediaQuery.sizeOf(context).width < 800 ? CustomDrawer() : null,
      body: AdbtiveLayout(
        mobileLayout: (context) => const DashBoardMobileLayout(),
        tabletLayout: (context) => const DashBoardTabletLayout(),
        desktopLayout: (context) => const DashBoardDesktopLayout(),
      ),
    );
  }
}
