import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'core/utils/device/device_utility.dart';
import 'core/utils/logging/logger.dart';
import 'my_app.dart';

void main() {
  ///--- Ensuring initialization of widgets binding for rendering and interactions
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  TLoggerHelper.info('Widgets Flutter Binding Initialized.');

  ///--- Await splash until other items are loaded
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  TLoggerHelper.info('Await Splash until other items are loaded');

  ///--- Setting portrait mode of the app
  TDeviceUtils.setPreferredOrientations();
  TLoggerHelper.info('App set to portrait mode.');

  ///--- Running the main app
  TLoggerHelper.info('Running main app.');
  runApp(const MyApp());
}

