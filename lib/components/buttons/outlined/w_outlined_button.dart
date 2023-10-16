import 'package:flutter/material.dart';
import 'package:poby_ui/extensions/context_extension.dart';
import 'package:poby_ui/extensions/text_string_extension.dart';

class CustomOutlinedButton extends StatelessWidget {
  final String textTitle;
  // color
  final Color? textColor;
  final Color? borderColor;
  final Color? disabledTextColor;
  // padding
  final EdgeInsetsGeometry? padding;
  // event
  final VoidCallback? onPressed;
  final void Function()? onLongPress;
  final void Function(bool)? onHover;
  final void Function(bool)? onFocusChange;
  // style
  final double? width;
  final double? height;
  final double? borderWidth;
  final double? borderRadius;
  final ButtonStyle? buttonStyle;

  const CustomOutlinedButton({
    super.key,
    required this.textTitle,
    this.onPressed,
    this.onLongPress,
    this.onHover,
    this.onFocusChange,
    this.textColor,
    this.borderColor,
    this.borderRadius = 15,
    this.padding,
    this.buttonStyle,
    this.borderWidth,
    this.width,
    this.height,
    this.disabledTextColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? context.deviceWidth,
      height: height ?? 56,
      child: OutlinedButton(
        onPressed: onPressed,
        onHover: onHover,
        onLongPress: onLongPress,
        onFocusChange: onFocusChange,
        style: buttonStyle ??
            OutlinedButton.styleFrom(
              padding: padding ?? EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius!),
              ),
              side: BorderSide(
                width: borderWidth ?? 1,
                color: onPressed != null
                    ? borderColor ?? Colors.blue
                    : Colors.grey,
              ),
            ),
        child: textTitle.customText.bold
            .color(onPressed != null
                ? textColor ?? Colors.black
                : disabledTextColor)
            .make(),
      ),
    );
  }
}
