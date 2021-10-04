import 'package:flutter/material.dart';
import 'package:liax/app/routes/routes_constants.dart';
import 'package:liax/app/views/home/home_view.dart';
import 'package:liax/app/views/splash/splash_view.dart';
import 'package:liax/app/views/welcome/welcome_view.dart';

class Routes {
  static Map<String, Widget Function(BuildContext)> paths = {
    RoutesConstants.kSplashView: (_) => const SplashView(),
    RoutesConstants.kHomeView: (_) => const HomeView(),
    RoutesConstants.kWelcomeView: (_) => const WelcomeView(),
  };
}
