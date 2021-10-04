import 'dart:async';

import 'package:flutter/material.dart';
import 'package:liax/app/routes/routes_constants.dart';
import 'package:liax/app/shared_preferences/app_preferences.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  _whereToNavigate({required bool welcomeRead}) {
    if (welcomeRead) {
      Navigator.pushNamedAndRemoveUntil(
          context, RoutesConstants.kHomeView, (route) => false);
    } else {
      Navigator.pushNamedAndRemoveUntil(
          context, RoutesConstants.kWelcomeView, (route) => false);
    }
  }

  @override
  initState() {
    Timer(const Duration(seconds: 3), () {
      WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
        AppPreferences.getWelcomeRead().then((value) async {
          await _whereToNavigate(welcomeRead: value);
        });
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.all(30),
          alignment: Alignment.center,
          color: Colors.white,
          child: const Center(
            child: CircularProgressIndicator(),
          )),
    );
  }
}
