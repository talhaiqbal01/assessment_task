import 'package:assessment_task/features/personalization/screens/home_screen/home.widgets/home_empty_data_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../../core/utils/helpers/helper_functions.dart';
import '../../providers/home_provider/home_provider.dart';
import 'home.widgets/home_data_widget.dart';
import 'home.widgets/home_error_widget.dart';
import 'home.widgets/home_loading_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final homeProvider = context.read<HomeProvider>();
      homeProvider.fetchUsers(page: 1, results: 10);
    });
  }

  @override
  Widget build(BuildContext context) {
    THelperFunctions.setSystemUIOverlay(context);
    final homeProvider = context.watch<HomeProvider>();

    return Scaffold(
      body: Builder(
        builder: (context) {
          if (homeProvider.isLoading) {
            return const HomeLoadingWidget();
          } else if (homeProvider.errorMessage != null) {
            return const HomeErrorWidget();
          } else if (homeProvider.users!.isNotEmpty || homeProvider.users != null) {
            return HomeDataWidget(users: homeProvider.users ?? []);
          } else {
            return const HomeEmptyDataWidget();
          }
        },
      ),
    );
  }
}

