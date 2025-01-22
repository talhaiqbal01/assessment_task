import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:go_router/go_router.dart';
import '../../../../../config/routes/routes.dart';
import '../../../../../config/widgets/loading/loading.dart';
import '../../../../../core/utils/helpers/helper_functions.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      redirectUser();
    });
  }

  void redirectUser() async {
    FlutterNativeSplash.remove();
    await Future.delayed(Duration(seconds: 3));
    if (mounted) {
      navigateToHomeScreen();
    }
  }

  void navigateToHomeScreen() {
    if (mounted) {
      context.go(TRoutes.homeScreen);
    }
  }

  @override
  Widget build(BuildContext context) {
    THelperFunctions.setSystemUIOverlay(context);

    return Scaffold(body: Center(child: TLoading()));
  }
}
