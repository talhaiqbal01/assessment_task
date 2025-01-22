import 'package:assessment_task/config/widgets/elevated_button/elevated_button.dart';
import 'package:assessment_task/core/utils/constants/error_strings.dart';
import 'package:assessment_task/core/utils/constants/sizes.dart';
import 'package:assessment_task/core/utils/constants/text_string.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeErrorWidget extends StatelessWidget {
  const HomeErrorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: EdgeInsets.all(TSizes.md),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(TErrors.unknownError, style: textTheme.headlineMedium, textAlign: TextAlign.center),

            Gap(TSizes.spaceBtwSections),

            TElevatedButton(onPress: () {}, text: TTexts.tryAgain),
          ],
        ),
      ),
    );
  }
}
