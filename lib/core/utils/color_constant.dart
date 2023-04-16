import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color deepOrange50 = fromHex('#fcdfd7');

  static Color deepOrangeA200 = fromHex('#ff6a42');

  static Color red900 = fromHex('#a1250b');

  static Color green900 = fromHex('#046625');

  static Color gray50 = fromHex('#f4f9ff');

  static Color teal300 = fromHex('#4295c6');

  static Color greenA700 = fromHex('#1db440');

  static Color black900 = fromHex('#000000');

  static Color teal30033 = fromHex('#3331baae');

  static Color yellowA100 = fromHex('#fcff8a');

  static Color teal900 = fromHex('#003c51');

  static Color blueGray800 = fromHex('#344053');

  static Color blueGray700 = fromHex('#475466');

  static Color blueGray900 = fromHex('#1d2838');

  static Color lime80001 = fromHex('#aaad04');

  static Color yellow100 = fromHex('#f9ffc9');

  static Color gray600 = fromHex('#737767');

  static Color gray700 = fromHex('#646464');

  static Color gray400 = fromHex('#bcc4c8');

  static Color lime600 = fromHex('#a8db39');

  static Color indigo50 = fromHex('#e4e6eb');

  static Color lime800 = fromHex('#83a302');

  static Color gray800 = fromHex('#464646');

  static Color gray900 = fromHex('#001024');

  static Color lime900 = fromHex('#859117');

  static Color blueGray500 = fromHex('#667084');

  static Color gray90001 = fromHex('#0f1728');

  static Color teal30001 = fromHex('#31baae');

  static Color blue50 = fromHex('#d9ebff');

  static Color gray100 = fromHex('#f2f3f6');

  static Color limeA700 = fromHex('#bbe809');

  static Color lightGreen50 = fromHex('#ebffec');

  static Color indigo900 = fromHex('#053265');

  static Color cyan900 = fromHex('#024c74');

  static Color blue200 = fromHex('#9ddaff');

  static Color whiteA700 = fromHex('#ffffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
