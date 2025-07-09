import 'package:dashboard_app/views/widgets/my_card.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';

class MyCardPageView extends StatelessWidget {
  const MyCardPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      scrollDirection: Axis.horizontal,
      children: List.generate(
        3,
        (index) => const MyCard(),
      ),
    );
  }
}
// class MyCardPageView extends StatelessWidget {
//   const MyCardPageView({
//     super.key,
//     required this.controller,
//     required this.onPageChanged,
//   });

//   final PageController controller;
//   final ValueChanged<int> onPageChanged;

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 200, // أو أي ارتفاع يناسبك
//       child: PageView.builder(
//         controller: controller,
//         itemCount: 3,
//         scrollDirection: Axis.horizontal,
//         onPageChanged: onPageChanged,
//         itemBuilder: (context, index) => const MyCard(),
//       ),
//     );
//   }
// }
