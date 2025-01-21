import 'package:assessment_task/core/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import '../../../core/utils/constants/colors.dart';

/// Custom Class for Light & Dark [Chip] Themes
class TChipTheme {
  TChipTheme._(); // To avoid creating instances

  /// Customizable Light [Chip] Theme
  static ChipThemeData lightChipTheme = ChipThemeData(
    elevation: 0,
    disabledColor: TColors.grey.withValues(alpha: 0.4),
    labelStyle: const TextStyle(color: TColors.black),
    selectedColor: TColors.primary,
    backgroundColor: TColors.lightBackground,
    padding: const EdgeInsets.all(TSizes.md),
    shape: RoundedRectangleBorder(side: const BorderSide(color: TColors.black, width: 1.0), borderRadius: BorderRadius.circular(TSizes.xl)),
    checkmarkColor: TColors.white,
    iconTheme: const IconThemeData(color: TColors.black),
  );

  /// Customizable Light [Chip] Theme
  static ChipThemeData darkChipTheme = ChipThemeData(
    elevation: 0,
    disabledColor: TColors.darkerGrey,
    labelStyle: const TextStyle(color: TColors.white),
    selectedColor: TColors.secondary,
    backgroundColor: TColors.darkBackground,
    padding: const EdgeInsets.all(TSizes.md),
    shape: RoundedRectangleBorder(side: const BorderSide(color: TColors.white, width: 1.0), borderRadius: BorderRadius.circular(TSizes.xl)),
    checkmarkColor: TColors.white,
    iconTheme: const IconThemeData(color: TColors.white),
  );
}
