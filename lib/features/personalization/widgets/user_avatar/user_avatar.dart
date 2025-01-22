import 'package:assessment_task/core/utils/constants/sizes.dart';
import 'package:assessment_task/core/utils/helpers/helper_functions.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/constants/colors.dart';
import '../../../../core/utils/constants/icons.dart';

class TUserAvatar extends StatelessWidget {
  final String imageUrl;
  final bool? isOnline;

  const TUserAvatar({super.key, required this.imageUrl, this.isOnline});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    final isUserOnline = isOnline ?? true;

    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: TColors.primary, width: 1),
          ),
          child: CircleAvatar(
            backgroundColor: isDark ? TColors.darkBackground : TColors.lightBackground,
            child: CachedNetworkImage(
              imageUrl: imageUrl,
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
        ),

        if (isUserOnline)
          Positioned(
            bottom: 0,
            right: 0,
            child: Icon(TIcons.connectivityBadge, size: TSizes.iconSm, color: isUserOnline ? TColors.success : TColors.error),
          ),
      ],
    );
  }
}
