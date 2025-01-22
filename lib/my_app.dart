import 'package:assessment_task/config/providers/app_providers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'config/routes/app_routes.dart';
import 'config/themes/theme.dart';

/// This the main app class [MyApp].
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: TAppProviders().allAppProviders,
      child: MaterialApp.router(
        /// Theming
        themeMode: ThemeMode.system,
        theme: TAppTheme.lightTheme,
        darkTheme: TAppTheme.darkTheme,

        /// Hide banner in debug mode
        debugShowCheckedModeBanner: false,

        /// Routing of the app
        routerConfig: TAppRoutes().router,
      ),
    );
  }
}
