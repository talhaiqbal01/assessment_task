import 'package:assessment_task/core/utils/constants/colors.dart';
import 'package:assessment_task/core/utils/constants/icons.dart';
import 'package:assessment_task/core/utils/constants/sizes.dart';
import 'package:assessment_task/core/utils/constants/text_string.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../../../../core/utils/helpers/helper_functions.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    THelperFunctions.setSystemUIOverlay(context);
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(TSizes.lg),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: TColors.primary,
                borderRadius: BorderRadius.circular(TSizes.borderRadiusLg),
              ),
              padding: EdgeInsets.all(TSizes.md),
              child: Column(
                children: [
                  Text(TTexts.datingList, style: textTheme.headlineMedium),

                  Gap(TSizes.spaceBtwSections),

                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(TIcons.search),
                      hintText: TTexts.search,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
