import 'package:flutter/material.dart';

class AdbtiveLayout extends StatelessWidget {
  const AdbtiveLayout(
      {super.key,
      required this.mobileLayout,
      required this.tabletLayout,
      required this.desktopLayout});
  final WidgetBuilder mobileLayout, tabletLayout, desktopLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 700) {
        return mobileLayout(context);
      } else if (constraints.maxWidth < 1040) {
        return tabletLayout(context);
      } else {
        return desktopLayout(context);
      }
    });
  }
}
