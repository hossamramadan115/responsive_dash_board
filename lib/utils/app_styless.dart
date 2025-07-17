import 'package:dashboard_app/utils/get_responsive_font_size.dart';
import 'package:flutter/cupertino.dart';

abstract class AppStyless {
  static TextStyle styleRegular16 = TextStyle(
    color: Color(0xFF064060),
    fontSize: getResponsiveFontSize(fontSize: 16),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  );

  static TextStyle styleBold16 = TextStyle(
    color: Color(0xFF4EB7F2),
    fontSize: getResponsiveFontSize(fontSize: 16),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w700,
  );

  static TextStyle styleMduim16 = TextStyle(
    color: Color(0xFF064061),
    fontSize: getResponsiveFontSize(fontSize: 16),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w500,
  );

  static TextStyle styleMduim20 = TextStyle(
    color: Color(0xFFFFFFFF),
    fontSize: getResponsiveFontSize(fontSize: 20),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w500,
  );

  static TextStyle styleSemiBold16 = TextStyle(
    color: Color(0xFF064060),
    fontSize: getResponsiveFontSize(fontSize: 16),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );

  static TextStyle styleSemiBold20 = TextStyle(
    color: Color(0xFF064060),
    fontSize: getResponsiveFontSize(fontSize: 20),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );

  static TextStyle styleRegular12 = TextStyle(
    color: Color(0xFFAAAAAA),
    fontSize: getResponsiveFontSize(fontSize: 12),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  );

  static TextStyle styleSemiBold24 = TextStyle(
    color: Color(0xFF4EB7F2),
    fontSize: getResponsiveFontSize(fontSize: 24),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  );

  static TextStyle styleRegular14 = TextStyle(
    color: Color(0xFFAAAAAA),
    fontSize: getResponsiveFontSize(fontSize: 14),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  );

  static TextStyle styleSemiBold18 = TextStyle(
    color: Color(0xFFFFFFFF),
    fontSize: getResponsiveFontSize(fontSize: 18),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );
}
