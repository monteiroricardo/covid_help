import 'package:flutter/material.dart';
import 'package:liax/app/controllers/view_cotroller.dart';

import 'package:provider/provider.dart';

import 'widgets/bottom_nav_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    final viewController = Provider.of<ViewCotroller>(context);
    return Scaffold(
      body: viewController.getCurrentRenderView(),
      bottomNavigationBar: const BottomNavWidget(),
    );
  }
}
