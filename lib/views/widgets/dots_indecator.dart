import 'package:dashboard_app/views/widgets/custom_dot.dart';
import 'package:flutter/material.dart';

class DotsIndecator extends StatelessWidget {
  const DotsIndecator({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) => Padding(
          padding: const EdgeInsets.only(right: 6),
          child: CustomDot(isActive: false),
        ),
      ),
    );
  }
}
// class DotsIndecator extends StatelessWidget {
//   const DotsIndecator({super.key, required this.currentIndex});
//   final int currentIndex;

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: List.generate(
//         3,
//         (index) => Padding(
//           padding: const EdgeInsets.only(right: 6),
//           child: CustomDot(isActive: currentIndex == index),
//         ),
//       ),
//     );
//   }
// }
