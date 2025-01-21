import 'package:assessment_task/config/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../features/personalization/presentation/screens/home_screen/home_screen.dart';
import '../../features/personalization/presentation/screens/loading_screen/loading_screen.dart';

/// This class contains all the App Screen Routes in [GoRoute] formats.
class TAppRoutes {

  GoRouter router = GoRouter(
    initialLocation: TRoutes.initialRoute,
    routes: [
      //-- GLOBAL Routes
      GoRoute(
        path: TRoutes.initialRoute,
        builder: (BuildContext context, GoRouterState state) => const LoadingScreen(),
      ),

      //-- Personalization Routes
      GoRoute(
        path: TRoutes.homeScreen,
        builder: (BuildContext context, GoRouterState state) => const HomeScreen(),
      ),
    ],
    errorPageBuilder: (context, state) => MaterialPage(child: Scaffold(body: Center(child: Text('Page not found')))),
  );

}