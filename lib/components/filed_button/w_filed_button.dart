import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CustomFiledButton extends StatefulWidget {
  final String textTitle;
  // color
  final Color? textColor;
  final Color? borderColor;
  final Color? backgroundColor;
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

  const CustomFiledButton({
    super.key,
    required this.textTitle,
    this.textColor,
    this.borderColor,
    this.padding,
    this.onPressed,
    this.onLongPress,
    this.onHover,
    this.onFocusChange,
    this.borderWidth,
    this.borderRadius,
    this.buttonStyle,
    this.backgroundColor,
  });

  @override
  State<CustomFiledButton> createState() => _CustomFiledButtonState();
}

class _CustomFiledButtonState extends State<CustomFiledButton> {
  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: widget.onPressed,
      onHover: widget.onHover,
      onFocusChange: widget.onFocusChange,
      onLongPress: widget.onLongPress,
      style: widget.buttonStyle ??
          FilledButton.styleFrom(
            backgroundColor: widget.backgroundColor,
          ),
      child: widget.textTitle.text.bold.make(),
    );
  }
}
