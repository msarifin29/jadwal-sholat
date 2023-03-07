import 'package:flutter/material.dart';

class AppSize {
  static const double s4 = 4.0;
  static const double s6 = 6.0;
  static const double s8 = 8.0;
  static const double s10 = 10.0;
  static const double s12 = 12.0;
  static const double s14 = 14.0;
  static const double s16 = 16.0;
  static const double s18 = 18.0;
  static const double s20 = 20.0;
  static const double s22 = 22.0;
  static const double s24 = 24.0;
  static const double s26 = 26.0;
}

Widget heightBox10() => const SizedBox(
      height: AppSize.s10,
    );
Widget heightBox20() => const SizedBox(
      height: AppSize.s20,
    );

Widget widthBox10() => const SizedBox(
      width: AppSize.s10,
    );
Widget widthBox20() => const SizedBox(
      width: AppSize.s20,
    );
Widget widthBox100() => const SizedBox(
      width: 100.0,
    );
