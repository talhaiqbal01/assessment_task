import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import '../../../../../config/widgets/elevated_button/elevated_button.dart';
import '../../../../../core/utils/constants/error_strings.dart';
import '../../../../../core/utils/constants/sizes.dart';
import '../../../../../core/utils/constants/text_string.dart';
import '../../../providers/home_provider/home_provider.dart';

class HomeEmptyDataWidget extends StatelessWidget {
  const HomeEmptyDataWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final homeProvider = context.watch<HomeProvider>();

    return Padding(
      padding: EdgeInsets.all(TSizes.md),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(TErrors.noDataAvailable, style: textTheme.headlineMedium, textAlign: TextAlign.center),

            Gap(TSizes.spaceBtwSections),

            TElevatedButton(onPress: homeProvider.fetchUsers, text: TTexts.tryAgain),
          ],
        ),
      ),
    );
  }
}
