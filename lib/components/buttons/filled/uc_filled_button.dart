// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:poby_ui/extensions/context_extension.dart';
import 'package:widgetbook/widgetbook.dart';

import '../../components.dart';

WidgetbookUseCase filledButtonUseCase(BuildContext context) {
  return WidgetbookUseCase(
    name: 'FilledButton',
    builder: (context) {
      return Scaffold(
        backgroundColor: const Color(0xFFFFBDE4),
        body: Center(
          child: CustomFilledButton(
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
            textTitle: context.knobs
                .string(label: 'label', initialValue: 'FilledButton'),
            textColor: context.colorKnob(context,
                label: 'textColor', initialValue: Colors.white),
            backgroundColor: context.colorKnob(context,
                label: 'backgroundColor', initialValue: Colors.black26),
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
