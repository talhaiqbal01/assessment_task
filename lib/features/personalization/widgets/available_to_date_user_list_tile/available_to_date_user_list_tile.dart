import 'package:assessment_task/core/utils/constants/text_string.dart';
import 'package:assessment_task/core/utils/device/device_utility.dart';
import 'package:assessment_task/core/utils/formatter/formatter.dart';
import 'package:assessment_task/features/personalization/models/user_model/user_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../../../../core/utils/constants/colors.dart';
import '../../../../../core/utils/constants/icons.dart';
import '../../../../../core/utils/constants/sizes.dart';
import '../../../../../core/utils/helpers/helper_functions.dart';

class TAvailableToDateUserListTile extends StatelessWidget {
  final UserModel userData;

  const TAvailableToDateUserListTile({super.key, required this.userData});

  @override
  Widget build(BuildContext context) {
    final screenWidth = TDeviceUtils.screenWidth(context);
    final textTheme = Theme.of(context).textTheme;
    final isDark = THelperFunctions.isDarkMode(context);

    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: TSizes.sm, vertical: TSizes.md),
      decoration: BoxDecoration(
        color: isDark ? TColors.darkerGrey : TColors.grey,
        borderRadius: BorderRadius.circular(TSizes.borderRadiusLg),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(TIcons.calender, color: TColors.primary, size: TSizes.iconMd),

              InkWell(
                onTap: () {},
                child: Icon(TIcons.menu, size: TSizes.iconMd),
              ),
            ],
          ),

          Gap(TSizes.sm),

          Padding(padding: EdgeInsets.symmetric(horizontal: TSizes.sm), child: Divider(color: TColors.darkGrey)),

          Gap(TSizes.sm),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: isDark ? TColors.darkBackground : TColors.lightBackground,
                    child: CachedNetworkImage(
                      imageUrl: userData.pictureThumbnail,
                      imageBuilder: (context, url) => Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(image: url, fit: BoxFit.cover),
                        ),
                      ),
                      placeholder: (context, url) => Icon(TIcons.user, color: isDark ? TColors.darkIcon : TColors.lightIcon),
                      errorWidget: (context, url, error) => Icon(TIcons.user, color: isDark ? TColors.darkIcon : TColors.lightIcon),
                    ),
                  ),

                  Gap(TSizes.sm),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('${userData.nameFirst} - ${userData.age}', style: textTheme.titleMedium),

                      Gap(TSizes.sm),

                      Text('3 km away from you', style: textTheme.labelSmall!.copyWith(color: TColors.grey)),
                    ],
                  ),
                ],
              ),

              Row(
                children: [
                  IconButton(onPressed: () {} , icon: Icon(TIcons.message, color: TColors.primary)),

                  IconButton(onPressed: () {} , icon: Icon(TIcons.phone, color: TColors.primary)),
                ],
              ),
            ],
          ),

          Gap(TSizes.sm),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(TIcons.calender, size: TSizes.iconMd),

                      Gap(TSizes.sm),

                      Text(TTexts.date, style: textTheme.labelSmall),
                    ],
                  ),

                  Gap(TSizes.md),

                  Text(TFormatter.formatDateTime(userData.registeredDate), style: textTheme.bodySmall),

                  Gap(TSizes.md),

                  Text(TFormatter.getTimeFromDateTime(userData.registeredDate), style: textTheme.bodySmall),
                ],
              ),

              Container(height: 70.0, width: 1.0,color: TColors.grey),


              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(TIcons.location, size: TSizes.iconMd),

                      Gap(TSizes.sm),

                      Text(TTexts.location, style: textTheme.labelSmall),
                    ],
                  ),

                  Gap(TSizes.md),

                  SizedBox(
                    width: screenWidth * 0.3,
                    child: Flexible(child: Text('${userData.state}, ${userData.city}', style: textTheme.bodySmall)),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
