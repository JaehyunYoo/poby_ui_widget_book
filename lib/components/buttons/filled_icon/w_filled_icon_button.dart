import 'package:flutter/material.dart';
import 'package:poby_ui/extensions/text_string_extension.dart';

class CustomFilledIconButton extends StatelessWidget {
  final Widget icon;
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

  const CustomFilledIconButton({
    super.key,
    required this.textTitle,
    required this.icon,
    this.width,
    this.height,
    this.textColor,
    this.backgroundColor,
    this.disabledColor,
    this.padding,
    this.onPressed,
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
      width: width ?? MediaQuery.of(context).size.width,
      height: height ?? 56,
      child: FilledButton.icon(
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
        label: textTitle.customText.color(textColor).bold.make(),
        icon: icon,
      ),
    );
  }
}
