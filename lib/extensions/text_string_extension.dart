import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

extension PobyUiVxExtension on String {
  VxTextBuilder get customText => text.fontFamily('Pretendard');
}

extension ColorExtensionString on String {
  Color asColor() {
    if (length != 7) {
      return const Color(0xFFFF0000);
    }
    return Color(int.tryParse(replaceFirst('#', '0xFF')) ?? 0xFFFF0000);
  }
}
