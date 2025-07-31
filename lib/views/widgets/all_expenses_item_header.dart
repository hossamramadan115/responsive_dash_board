import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader(
      {super.key, required this.image, this.imageBackground, this.imageColor});
  final String image;
  final Color? imageBackground, imageColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxHeight: 60),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                // width: 60,
                // height: 60,
                decoration: ShapeDecoration(
                  color: imageBackground ?? Color(0xFFFAFAFA),
                  shape: OvalBorder(),
                ),
                child: Center(
                  child: SvgPicture.asset(
                    image,
                    colorFilter: ColorFilter.mode(
                      imageColor ?? Color(0xff4EB7F2),
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        const Spacer(),
        Transform.rotate(
          angle: -1.5707963382 * 2,
          child: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: imageColor == null ? Color(0xFF064061) : Colors.white,
          ),
        ),
      ],
    );
  }
}
