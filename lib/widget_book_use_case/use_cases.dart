// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:poby_ui/components/filed_button/w_filed_button.dart';
import 'package:poby_ui/components/outlined_button/w_outlined_button.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  name: 'Button',
  type: FilledButton,
)
Widget filledButtonUseCase(BuildContext context) {
  return Scaffold(
    body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: CustomFiledButton(
            textTitle: context.knobs
                .string(label: 'label', initialValue: 'FilledButton'),
            backgroundColor: context.knobs
                .color(label: 'color', initialValue: Colors.purple),
          ),
        ),
      ],
    ),
  );
}

@widgetbook.UseCase(name: 'Button', type: OutlinedButton)
Widget outLinedButtonUseCase(BuildContext context) {
  return Scaffold(
    body: Center(
      child: CustomOutlinedButton(
        textTitle: context.knobs
            .string(label: 'label', initialValue: 'OutlinedButton'),
      ),
    ),
  );
}
