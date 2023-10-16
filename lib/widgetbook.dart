// ignore_for_file: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poby_ui/pages/home_screen.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:flutter_web_plugins/url_strategy.dart' show usePathUrlStrategy;
import 'components/filed_button/uc_filled_button.dart';
import 'components/filed_button/w_filed_button.dart';

void main() {
  usePathUrlStrategy();
  runApp(const WidgetBookBuildApp());
}

class WidgetBookBuildApp extends StatelessWidget {
  const WidgetBookBuildApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Widgetbook(
      initialRoute: '?path=screen/homescreen',
      directories: [
        WidgetbookFolder(
          name: 'Button',
          children: [
            WidgetbookCategory(
              name: 'Filled',
              children: [
                filledButtonUseCase(context),
              ],
            ),
            WidgetbookCategory(
              name: 'Outlined',
              children: [
                WidgetbookUseCase(
                  name: 'OutlinedButton',
                  builder: (context) => Scaffold(
                    body: CustomFilledButton(
                      textTitle: context.knobs.string(label: 'label'),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        WidgetbookFolder(
          name: 'Screen',
          children: [
            WidgetbookUseCase(
              name: 'HomeScreen',
              builder: (context) => const HomeScreen(),
            ),
          ],
        ),
      ],
      addons: [
        TextScaleAddon(scales: [1.0, 2.0]),
        DeviceFrameAddon(devices: Devices.all),
      ],
      appBuilder: (context, child) {
        return ScreenUtilInit(
          designSize: const Size(375, 812),
          minTextAdapt: true,
          splitScreenMode: true,
          useInheritedMediaQuery: false,
          builder: (context, child) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              home: child,
            );
          },
          child: child,
        );
      },
    );
  }
}
