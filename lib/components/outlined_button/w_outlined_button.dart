import 'package:flutter/material.dart';
import 'package:poby_ui/extensions/text_family_extension.dart';

class CustomOutlinedButton extends StatefulWidget {
  final String textTitle;
  // color
  final Color? textColor;
  final Color? borderColor;
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

  const CustomOutlinedButton({
    super.key,
    required this.textTitle,
    this.onPressed,
    this.onLongPress,
    this.onHover,
    this.onFocusChange,
    this.textColor,
    this.borderColor,
    this.borderRadius = 1,
    this.padding,
    this.buttonStyle,
    this.borderWidth,
  });

  @override
  State<CustomOutlinedButton> createState() => _CustomOutlinedButtonState();
}

class _CustomOutlinedButtonState extends State<CustomOutlinedButton> {
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: widget.onPressed,
      onHover: widget.onHover,
      onLongPress: widget.onLongPress,
      onFocusChange: widget.onFocusChange,
      style: widget.buttonStyle ??
          OutlinedButton.styleFrom(
            padding: widget.padding ??
                const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(widget.borderRadius!),
            ),
          ),
      child: widget.textTitle.customText.bold
          .color(widget.textColor ?? Colors.black)
          .make(),
    );
  }
}
