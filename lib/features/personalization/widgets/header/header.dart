import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../../../../core/utils/constants/colors.dart';
import '../../../../../core/utils/constants/icons.dart';
import '../../../../../core/utils/constants/sizes.dart';
import '../../../../../core/utils/constants/text_string.dart';

class THeader extends StatelessWidget {
  const THeader({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: TColors.primary,
        borderRadius: BorderRadius.circular(TSizes.borderRadiusLg * 2),
      ),
      padding: EdgeInsets.symmetric(vertical: TSizes.sm),
      child: Column(
        children: [
          AppBar(
            leading: IconButton(onPressed: () {}, icon: Icon(TIcons.backButton)),
            title: Text('Dating list', style: textTheme.titleLarge),
            centerTitle: true,
          ),

          Gap(TSizes.spaceBtwSections),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: TSizes.sm),
            child: TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(TIcons.search),
                hintText: TTexts.search,
              ),
              textInputAction: TextInputAction.search,
              keyboardType: TextInputType.text,
            ),
          ),
        ],
      ),
    );
  }
}
