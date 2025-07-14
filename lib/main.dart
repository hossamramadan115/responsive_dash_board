// import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'views/dash_board_view.dart';

void main() {
  runApp(ResponsiveDashBoard(),
    // DevicePreview(
    //   enabled: true,
    //   builder: (context) => ResponsiveDashBoard(),
    // ),
  );
}

class ResponsiveDashBoard extends StatelessWidget {
  const ResponsiveDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // locale: DevicePreview.locale(context),
      // builder: DevicePreview.appBuilder,
      home: DashBoardView(),
    );
  }
}
