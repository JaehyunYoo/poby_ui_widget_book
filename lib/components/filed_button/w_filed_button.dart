import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CustomFilledButton extends StatefulWidget {
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
  State<CustomFilledButton> createState() => _CustomFilledButtonState();
}

class _CustomFilledButtonState extends State<CustomFilledButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width ?? MediaQuery.of(context).size.width,
      height: widget.height ?? 52,
      child: FilledButton(
        onPressed: widget.onPressed,
        onHover: widget.onHover,
        onFocusChange: widget.onFocusChange,
        onLongPress: widget.onLongPress,
        style: widget.buttonStyle ??
            FilledButton.styleFrom(
              padding: widget.padding ?? EdgeInsets.zero,
              splashFactory: NoSplash.splashFactory,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(widget.borderRadius ?? 10),
              ),
              backgroundColor: widget.backgroundColor,
              disabledBackgroundColor: widget.disabledColor,
            ),
        child: widget.textTitle.text.color(widget.textColor).bold.make(),
      ),
    );
  }
}
