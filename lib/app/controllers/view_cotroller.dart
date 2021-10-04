import 'package:flutter/cupertino.dart';
import 'package:liax/app/views/companies/companies_view.dart';
import 'package:liax/app/views/dashboard/dashboard_view.dart';
import 'package:liax/app/views/peoples/peoples_view.dart';

class ViewCotroller extends ChangeNotifier {
  List<Widget> views = const [
    CompaniesView(),
    PeoplesView(),
    DashboardView(),
  ];

  Widget getCurrentRenderView() {
    return views[currentViewIndex];
  }

  int currentViewIndex = 0;

  void setCurrentViewIndex(int index) {
    currentViewIndex = index;
    notifyListeners();
  }
}
