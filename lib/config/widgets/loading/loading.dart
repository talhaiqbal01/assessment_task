import 'package:flutter/material.dart';
import '../../../core/utils/constants/colors.dart';
import '../../../core/utils/constants/sizes.dart';
import '../../../core/utils/helpers/helper_functions.dart';

class TLoading extends StatelessWidget {
  final double? size;
  final Color? color;

  const TLoading({super.key, this.size, this.color});

  @override
  Widget build(BuildContext context) {
    bool isDark = THelperFunctions.isDarkMode(context);
    double? loadingSize = size ?? TSizes.iconMd;

    return SizedBox(
      height: loadingSize,
      width: loadingSize,
      child: CircularProgressIndicator(color: color ?? (isDark ? TColors.darkLoading : TColors.lightLoading)),
    );
  }
}
