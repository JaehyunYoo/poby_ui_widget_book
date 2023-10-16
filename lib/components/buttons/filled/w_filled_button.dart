import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CustomFilledButton extends StatelessWidget {
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

  const CustomFilledButton({
    super.key,
    required this.textTitle,
    this.textColor,
    this.padding,
    this.onPressed,
    this.onLongPress,
    this.onHover,
    this.onFocusChange,
    this.borderWidth,
    this.borderRadius,
    this.buttonStyle,
    this.backgroundColor,
    this.width,
    this.height,
    this.disabledColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? MediaQuery.of(context).size.width,
      height: height ?? 56,
      child: FilledButton(
        onPressed: onPressed,
        onHover: onHover,
        onFocusChange: onFocusChange,
        onLongPress: onLongPress,
        style: buttonStyle ??
            FilledButton.styleFrom(
              padding: padding ?? EdgeInsets.zero,
              splashFactory: NoSplash.splashFactory,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius ?? 15),
              ),
              backgroundColor: backgroundColor,
              disabledBackgroundColor: disabledColor,
            ),
        child: textTitle.text.color(textColor).bold.make(),
      ),
    );
  }
}
