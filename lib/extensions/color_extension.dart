import 'package:flutter/material.dart';

extension ColorExtensionColorToString on Color {
  String hexCode() {
    return '#${value.toRadixString(16).substring(2, 8).toUpperCase()}';
  }
}
