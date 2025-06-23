import 'package:dashboard_app/views/widgets/dash_board_view_body.dart';
import 'package:flutter/material.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Responsive text example',
        ),
      ),
      body: DashBoardViewBody(),
    );
  }
}
