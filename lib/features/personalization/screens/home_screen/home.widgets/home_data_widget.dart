import 'package:assessment_task/config/widgets/loading/loading.dart';
import 'package:assessment_task/features/personalization/models/user_model/user_model.dart';
import 'package:assessment_task/features/personalization/screens/home_screen/home.widgets/home_empty_data_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../../../../core/utils/constants/sizes.dart';
import '../../../../../core/utils/device/device_utility.dart';
import '../../../providers/home_provider/home_provider.dart';
import '../../../widgets/available_to_date_user_list_tile/available_to_date_user_list_tile.dart';
import '../../../widgets/header/header.dart';
import 'package:provider/provider.dart';

class HomeDataWidget extends StatefulWidget {
  final List<UserModel> users;

  const HomeDataWidget({super.key, required this.users});

  @override
  State<HomeDataWidget> createState() => _HomeDataWidgetState();
}

class _HomeDataWidgetState extends State<HomeDataWidget> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    _scrollController.addListener(() {
      // Trigger next page load when user reaches the bottom of the list
      if (_scrollController.position.pixels >= _scrollController.position.maxScrollExtent - 50) {
        final homeProvider = context.read<HomeProvider>();
        // Check if the app is not already loading the next page
        if (!homeProvider.isMoreLoading && homeProvider.users != null) {
          homeProvider.fetchMoreUsers(page: homeProvider.page + 1, results: 10);
        }
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final homeProvider = context.watch<HomeProvider>();
    final statusBarHeight = TDeviceUtils.getStatusBarHeight(context);

    return widget.users.isEmpty
        ?
    HomeEmptyDataWidget()
        :
    SingleChildScrollView(
      controller: _scrollController,
      padding: EdgeInsets.symmetric(horizontal: TSizes.sm),
      child: Column(
        children: [
          Gap(statusBarHeight),

          const THeader(),

          Gap(TSizes.spaceBtwSections),

          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            separatorBuilder: (context, index) => Gap(TSizes.spaceBtwItems),
            itemCount: widget.users.length,
            itemBuilder: (context, index) {
              final user = widget.users[index];

              return TAvailableToDateUserListTile(userData: user);
            },
          ),

          Visibility(
            visible: homeProvider.isMoreLoading,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Gap(TSizes.spaceBtwItems),

                const TLoading(),

                Gap(TSizes.spaceBtwItems),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
