// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_import, prefer_relative_imports, directives_ordering

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AppGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:poby_ui/widget_book_use_case/use_cases.dart' as _i2;
import 'package:widgetbook/widgetbook.dart' as _i1;

final directories = <_i1.WidgetbookNode>[
  _i1.WidgetbookFolder(
    name: 'material',
    children: [
      _i1.WidgetbookComponent(
        name: 'FilledButton',
        useCases: [
          _i1.WidgetbookUseCase(
            name: 'Button',
            builder: _i2.filledButtonUseCase,
          )
        ],
      ),
      _i1.WidgetbookComponent(
        name: 'OutlinedButton',
        useCases: [
          _i1.WidgetbookUseCase(
            name: 'Button',
            builder: _i2.outLinedButtonUseCase,
          )
        ],
      ),
    ],
  )
];
