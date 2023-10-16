import 'package:flutter/material.dart';
import 'package:poby_ui/extensions/context_extension.dart';
import 'package:poby_ui/extensions/text_string_extension.dart';

class CustomFilledTonalButton extends StatelessWidget {
  final String textTitle;
  // size
  final double? width;
  final double? height;
  // color
  final Color? textColor;
  final Color? backgroundColor;
  final Color? disabledColor;
  // padding
  final EdgeInsetsGeometry? padding;
  // event
  final VoidCallback? onPressed;
  final void Function()? onLongPress;
  final void Function(bool)? onHover;
  final void Function(bool)? onFocusChange;
  // style
  final double? borderWidth;
  final double? borderRadius;
  final ButtonStyle? buttonStyle;

  const CustomFilledTonalButton({
    super.key,
    this.onPressed,
    required this.textTitle,
    this.width,
    this.height,
    this.textColor,
    this.backgroundColor,
    this.disabledColor,
    this.padding,
    this.onLongPress,
    this.onHover,
    this.onFocusChange,
    this.borderWidth,
    this.borderRadius,
    this.buttonStyle,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? context.deviceWidth,
      height: height ?? 56,
      child: FilledButton.tonal(
        onPressed: onPressed,
        style: FilledButton.styleFrom(
          padding: padding ?? EdgeInsets.zero,
          splashFactory: NoSplash.splashFactory,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 15),
          ),
          backgroundColor: backgroundColor,
          disabledBackgroundColor: disabledColor,
        ),
        child:
            textTitle.customText.bold.color(textColor ?? Colors.black26).make(),
      ),
    );
  }
}
