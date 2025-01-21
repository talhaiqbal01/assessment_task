import 'package:flutter/material.dart';
import '../../../core/utils/constants/colors.dart';
import '../../../core/utils/constants/sizes.dart';

/// Custom Class for Light & Dark [BottomSheet] Themes
class TBottomSheetTheme {
  TBottomSheetTheme._(); // To avoid creating instances

  /// Customizable Light [BottomSheet] Theme
  static BottomSheetThemeData lightBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    elevation: 0,
    dragHandleColor: TColors.darkerGrey,
    backgroundColor: TColors.lightBottomSheetBackground,
    modalBackgroundColor: TColors.lightBottomSheetBackground,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(TSizes.borderRadiusSm)),
  );

  /// Customizable Dark Bottom Sheet Theme
  static BottomSheetThemeData darkBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    dragHandleColor: TColors.grey,
    elevation: 0,
    backgroundColor: TColors.darkBottomSheetBackground,
    modalBackgroundColor: TColors.darkBottomSheetBackground,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(TSizes.borderRadiusSm),
    ),
  );
}