import 'package:flutter/cupertino.dart';

double getResponsiveFontSize(context, {required fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context) {
  // var dispatcher = PlatformDispatcher.instance;
  // var physicalWidth = dispatcher.views.first.physicalSize.width;
  // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  // double width = physicalWidth / devicePixelRatio;

  double width = MediaQuery.sizeOf(context).width;
  if (width < 600) {
    return width / 550;
  } else if (width < 1200) {
    return width / 1000;
  } else {
    return width / 1500;
  }
}

// double getResponsiveFontSize(BuildContext context, {required fontSize}) {
//   double scaleFactor = getScaleFactor(context);
//   double responsiveFontSize = fontSize * scaleFactor;

//   double lowerLimit = fontSize * .8;
//   double upperLimit = fontSize * 1.2;
//   return responsiveFontSize.clamp(lowerLimit, upperLimit);
// }

// double getScaleFactor(BuildContext context) {
//   double width = MediaQuery.sizeOf(context).width;

//   if (width < 600) {
//     return width / 550;
//   } else if (width < 1200) {
//     return width / 1000;
//   } else {
//     return width / 1500;
//   }
// }
