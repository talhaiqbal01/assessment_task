import 'package:flutter/material.dart';
import 'config/routes/app_routes.dart';
import 'config/themes/theme.dart';

/// This the main app class [MyApp].
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      /// Theming
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,

      /// Hide banner in debug mode
      debugShowCheckedModeBanner: false,

      /// Routing of the app
      routerConfig: TAppRoutes().router,
    );
  }
}
