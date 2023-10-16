// ignore_for_file: depend_on_referenced_packages
import 'package:flutter/cupertino.dart';
import 'package:poby_ui/extensions/color_extension.dart';
import 'package:poby_ui/extensions/text_string_extension.dart';
import 'package:widgetbook/widgetbook.dart';

extension BuildContextExtension on BuildContext {
  Color colorKnob(
    BuildContext context, {
    required String label,
    required Color initialValue,
  }) {
    return context.knobs
        .string(
          label: label,
          initialValue: initialValue.hexCode(),
        )
        .asColor();
  }

  // width
  double get deviceWidth => MediaQuery.of(this).size.width;
  // height
  double get deviceHeight => MediaQuery.of(this).size.width;
}
