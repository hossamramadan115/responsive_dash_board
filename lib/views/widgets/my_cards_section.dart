import 'package:dashboard_app/utils/app_styless.dart';
import 'package:dashboard_app/views/widgets/dots_indecator.dart';
import 'package:dashboard_app/views/widgets/my_card_page_view.dart';
import 'package:flutter/material.dart';

class MyCardsSection extends StatelessWidget {
  const MyCardsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 420,
          child: Text(
            'My Card',
            style: AppStyless.styleSemiBold20,
          ),
        ),
        SizedBox(height: 20),
        MyCardPageView(),
        SizedBox(height: 20),
        DotsIndecator(),
      ],
    );
  }
}
// class MyCardsSection extends StatefulWidget {
//   const MyCardsSection({super.key});

//   @override
//   State<MyCardsSection> createState() => _MyCardsSectionState();
// }

// class _MyCardsSectionState extends State<MyCardsSection> {
//   final PageController _controller = PageController();
//   int _currentPage = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         SizedBox(
//           width: 420,
//           child: Text(
//             'My Card',
//             style: AppStyless.styleSemiBold20,
//           ),
//         ),
//         const SizedBox(height: 20),
//         MyCardPageView(
//           controller: _controller,
//           onPageChanged: (index) {
//             setState(() {
//               _currentPage = index;
//             });
//           },
//         ),
//         const SizedBox(height: 20),
//         DotsIndecator(currentIndex: _currentPage),
//       ],
//     );
//   }
// }

