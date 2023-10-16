// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:poby_ui/extensions/context_extension.dart';
import 'package:widgetbook/widgetbook.dart';

import '../../components.dart';

WidgetbookUseCase outlinedButton(BuildContext context) {
  return WidgetbookUseCase(
    name: 'OutlinedButton',
    builder: (BuildContext context) {
      return Scaffold(
        backgroundColor: const Color(0xFFFFBDE4),
        body: Center(
          child: CustomOutlinedButton(
            width: context.knobs.double
                .input(label: 'width', initialValue: 200)
                .toDouble(),
            height: context.knobs.double
                .input(label: 'height', initialValue: 52)
                .toDouble(),
            padding: EdgeInsets.symmetric(
              horizontal: context.knobs.double
                  .input(label: 'horizontal', initialValue: 16),
            ),
            textTitle: context.knobs.string(
              label: 'label',
              initialValue: 'OutlinedButton',
            ),
            textColor: context.colorKnob(
              context,
              label: 'textColor',
              initialValue: Colors.purple,
            ),
            disabledTextColor: context.colorKnob(
              context,
              label: 'disabledTextColor',
              initialValue: Colors.black54,
            ),
            borderRadius: context.knobs.double.input(
              label: 'borderRadius',
              initialValue: 10,
            ),
            borderColor: context.colorKnob(
              context,
              label: 'borderColor',
              initialValue: Colors.purpleAccent,
            ),
            onPressed:
                context.knobs.boolean(label: 'onPressed', initialValue: true)
                    ? () {}
                    : null,
          ),
        ),
      );
    },
  );
}
