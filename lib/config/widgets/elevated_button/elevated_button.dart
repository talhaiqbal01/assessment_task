import 'package:flutter/material.dart';
import '../../../core/utils/constants/sizes.dart';

class TElevatedButton extends StatelessWidget {
  final double? height;
  final double? width;
  final Color? backgroundColor;
  final VoidCallback onPress;
  final String text;

  const TElevatedButton({
    super.key,
    this.height,
    this.width,
    this.backgroundColor,
    required this.onPress,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    double? buttonHeight = height ?? TSizes.buttonHeight;
    double? buttonWidth = width ?? double.infinity;

    return SizedBox(
      height: buttonHeight,
      width: buttonWidth,
      child: ElevatedButton(
        onPressed: onPress,
        style: ElevatedButton.styleFrom(backgroundColor: backgroundColor),
        child: Text(text, style: textTheme.titleSmall!.copyWith(fontSize: buttonHeight * 0.3, fontWeight: FontWeight.w900)),
      ),
    );
  }
}
