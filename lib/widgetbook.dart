// ignore_for_file: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
import 'widgetbook.directories.g.dart';

void main() => runApp(
      const WidgetBookBuildApp(),
    );

@widgetbook.App()
class WidgetBookBuildApp extends StatelessWidget {
  const WidgetBookBuildApp({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return constraints.maxWidth < 760
            ? MaterialApp(
                home: Scaffold(
                  body: 'Small window.. Please Large'
                      .text
                      .bold
                      .black
                      .make()
                      .centered(),
                ),
              )
            : Widgetbook.material(
                directories: directories,
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
      },
    );
  }
}
