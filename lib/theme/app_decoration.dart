import 'package:flutter/material.dart';
import 'package:stock_market/core/utils/color_constant.dart';
import 'package:stock_market/core/utils/size_utils.dart';


class AppDecoration {
  static BoxDecoration get outlineTeal30033 => BoxDecoration();
  static BoxDecoration get txtOutlineGray800 => BoxDecoration(
        border: Border.all(
          color: ColorConstant.gray800,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get fillGray50 => BoxDecoration(
        color: ColorConstant.gray50,
      );
  static BoxDecoration get fillLightgreen50 => BoxDecoration(
        color: ColorConstant.lightGreen50,
      );
  static BoxDecoration get fillBlue50 => BoxDecoration(
        color: ColorConstant.blue50,
      );
  static BoxDecoration get fillTeal30001 => BoxDecoration(
        color: ColorConstant.teal30001,
      );
  static BoxDecoration get fillLime800 => BoxDecoration(
        color: ColorConstant.lime800,
      );
  static BoxDecoration get fillGray100 => BoxDecoration(
        color: ColorConstant.gray100,
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
}

class BorderRadiusStyle {
  static BorderRadius customBorderLR20 = BorderRadius.only(
    topRight: Radius.circular(
      getHorizontalSize(
        20,
      ),
    ),
    bottomRight: Radius.circular(
      getHorizontalSize(
        20,
      ),
    ),
  );

  static BorderRadius roundedBorder4 = BorderRadius.circular(
    getHorizontalSize(
      4,
    ),
  );

  static BorderRadius customBorderTL12 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        12,
      ),
    ),
  );

  static BorderRadius roundedBorder1 = BorderRadius.circular(
    getHorizontalSize(
      1,
    ),
  );

  static BorderRadius txtCircleBorder8 = BorderRadius.circular(
    getHorizontalSize(
      8,
    ),
  );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

// double get strokeAlignInside => BorderSide.strokeAlignInside;

// double get strokeAlignCenter => BorderSide.strokeAlignCenter;

// double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
