import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color red600 = fromHex('#ea3d2a');

  static Color red40063 = fromHex('#63f65b4e');

  static Color red800 = fromHex('#c82c2c');

  static Color orange30063 = fromHex('#63fda758');

  static Color red400 = fromHex('#f65b4e');

  static Color gray80087 = fromHex('#87573353');

  static Color indigo8006c = fromHex('#6c29319f');

  static Color black90087 = fromHex('#87040920');

  static Color deepOrange300 = fromHex('#ff8a61');

  static Color deepOrange500 = fromHex('#ff5a20');

  static Color gray8007f = fromHex('#7f573353');

  static Color deepOrange100 = fromHex('#ffd8bb');

  static Color orangeA200 = fromHex('#fc9d45');

  static Color gray80019 = fromHex('#19573353');

  static Color gray800 = fromHex('#573353');

  static Color orangeA20001 = fromHex('#fb9e46');

  static Color yellow50 = fromHex('#fff6ed');

  static Color orangeA20002 = fromHex('#ff923f');

  static Color orange200 = fromHex('#ffbb71');

  static Color red80001 = fromHex('#c62929');

  static Color bluegray400 = fromHex('#888888');

  static Color whiteA700 = fromHex('#ffffff');

  static Color indigo800 = fromHex('#29319f');

  static Color deepOrange50 = fromHex('#fae9db');

  static Color deepOrangeA200 = fromHex('#f46742');

  static Color red700 = fromHex('#d33839');

  static Color gray80026 = fromHex('#26573353');

  static Color red500 = fromHex('#f94e33');

  static Color orange30001 = fromHex('#fda758');

  static Color gray50 = fromHex('#fff5fa');

  static Color gray80063 = fromHex('#63573353');

  static Color pink8006c = fromHex('#6c973456');

  static Color black900 = fromHex('#000000');

  static Color red4006c = fromHex('#6cf65b4e');

  static Color yellow900 = fromHex('#f47f2d');

  static Color pink800 = fromHex('#973456');

  static Color orange3006c = fromHex('#6cfda758');

  static Color deepOrange400 = fromHex('#fd6d47');

  static Color indigo80063 = fromHex('#6329319f');

  static Color pink80063 = fromHex('#63973456');

  static Color blue600 = fromHex('#1772ea');

  static Color orangeA20063 = fromHex('#63fc9d45');

  static Color orange300 = fromHex('#f9b566');

  static Color gray80075 = fromHex('#75573353');

  static Color orange2004f = fromHex('#4fffb97b');

  static Color orange50 = fromHex('#fff3e8');

  static Color orange5001 = fromHex('#fff3e9');

  static Color blue6001e = fromHex('#1e1772ea');

  static Color orange5087 = fromHex('#87fff3e9');

  static Color orange5000 = fromHex('#00fff3e9');

  static Color orange20019 = fromHex('#19ffb97b');

  static Color indigo900 = fromHex('#0f0d5f');

  static Color gray8006c = fromHex('#6c573353');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
