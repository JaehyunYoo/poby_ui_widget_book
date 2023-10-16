// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:poby_ui/components/filed_button/w_filed_button.dart';
import 'package:poby_ui/extensions/context_extension.dart';
import 'package:widgetbook/widgetbook.dart';

WidgetbookUseCase filledButtonUseCase(BuildContext context) {
  return WidgetbookUseCase(
    name: 'FilledButton',
    builder: (context) {
      return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
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
                    label: 'textColor', initialValue: Colors.black54),
                backgroundColor: context.colorKnob(context,
                    label: 'backgroundColor', initialValue: Colors.black87),
                onPressed: context.knobs
                        .boolean(label: 'onPressed', initialValue: true)
                    ? () {}
                    : null,
              ),
            ),
          ],
        ),
      );
    },
  );
}
