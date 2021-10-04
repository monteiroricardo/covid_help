import 'package:flutter/material.dart';
import 'package:liax/app/controllers/companies_controller.dart';
import 'package:liax/app/controllers/view_cotroller.dart';
import 'package:liax/app/routes/routes_constants.dart';
import 'package:liax/app/routes/routes_paths.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ViewCotroller(),
        ),
        ChangeNotifierProvider(
          create: (_) => CompaniesController(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: Routes.paths,
        initialRoute: RoutesConstants.kSplashView,
      ),
    ),
  );
}
