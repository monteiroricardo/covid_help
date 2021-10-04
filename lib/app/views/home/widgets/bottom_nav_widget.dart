import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:liax/app/controllers/view_cotroller.dart';
import 'package:provider/provider.dart';

class BottomNavWidget extends StatelessWidget {
  const BottomNavWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewController = Provider.of<ViewCotroller>(context);
    return BottomNavigationBar(
      onTap: (value) {
        viewController.setCurrentViewIndex(value);
      },
      currentIndex: viewController.currentViewIndex,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      backgroundColor: const Color(0xFF1191DB),
      selectedIconTheme: const IconThemeData(
        size: 25,
        color: Colors.white,
      ),
      unselectedIconTheme: const IconThemeData(
        size: 22,
        color: Colors.white38,
      ),
      items: const [
        BottomNavigationBarItem(
          label: '',
          icon: Icon(
            FeatherIcons.shield,
          ),
        ),
        BottomNavigationBarItem(
          label: '',
          icon: Icon(
            FeatherIcons.user,
          ),
        ),
        BottomNavigationBarItem(
          label: '',
          icon: Icon(
            FeatherIcons.pieChart,
          ),
        ),
      ],
    );
  }
}
