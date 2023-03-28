import 'package:flutter/material.dart';
import 'package:zephyr_app/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get outlineOrange30063 => BoxDecoration(
        border: Border.all(
          color: ColorConstant.orange30063,
          width: getHorizontalSize(
            3,
          ),
        ),
      );
  static BoxDecoration get fillIndigo80063 => BoxDecoration(
        color: ColorConstant.indigo80063,
      );
  static BoxDecoration get fillPink80063 => BoxDecoration(
        color: ColorConstant.pink80063,
      );
  static BoxDecoration get fillRed40063 => BoxDecoration(
        color: ColorConstant.red40063,
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
  static BoxDecoration get fillOrange50 => BoxDecoration(
        color: ColorConstant.orange50,
      );
  static BoxDecoration get fillOrangeA20063 => BoxDecoration(
        color: ColorConstant.orangeA20063,
      );
  static BoxDecoration get fillOrange5001 => BoxDecoration(
        color: ColorConstant.orange5001,
      );
  static BoxDecoration get fillOrange5087 => BoxDecoration(
        color: ColorConstant.orange5087,
      );
  static BoxDecoration get gradientOrange5000Orange5001 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            0.5,
            0.22,
          ),
          end: Alignment(
            0.5,
            0.5,
          ),
          colors: [
            ColorConstant.orange5000,
            ColorConstant.orange5001,
          ],
        ),
      );
  static BoxDecoration get fillYellow50 => BoxDecoration(
        color: ColorConstant.yellow50,
      );
  static BoxDecoration get fillOrange30063 => BoxDecoration(
        color: ColorConstant.orange30063,
      );
  static BoxDecoration get outlineGray80063 => BoxDecoration(
        border: Border.all(
          color: ColorConstant.gray80063,
          width: getHorizontalSize(
            3,
          ),
        ),
      );
}

class BorderRadiusStyle {
  static BorderRadius circleBorder30 = BorderRadius.circular(
    getHorizontalSize(
      30,
    ),
  );

  static BorderRadius roundedBorder10 = BorderRadius.circular(
    getHorizontalSize(
      10,
    ),
  );

  static BorderRadius roundedBorder20 = BorderRadius.circular(
    getHorizontalSize(
      20,
    ),
  );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
