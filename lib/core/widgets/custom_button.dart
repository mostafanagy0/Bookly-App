import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButten extends StatelessWidget {
  const CustomButten({
    super.key,
    required this.backgroundColor,
    required this.textColor,
    this.borderRadius,
    required this.text,
    this.fontSize,
    this.onPressed,
  });
  final Color backgroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  final String text;
  final double? fontSize;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(12),
          ),
        ),
        child: Text(text,
            style: Styles.textStyl18.copyWith(
                fontWeight: FontWeight.w900,
                fontSize: fontSize,
                color: textColor)),
      ),
    );
  }
}
