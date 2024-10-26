
// Controller to handle navigation bar state
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:poultry/app/screen/navbar_screens/dashboard_view/dashboard_view.dart';
import 'package:poultry/app/screen/navbar_screens/profile_view/profile_view.dart';

import '../screen/navbar_screens/analysis_view/analysis_view.dart';
import '../screen/navbar_screens/media_view/media_tabs.dart';
import '../screen/navbar_screens/nav_bar_screen.dart';

class NavController extends GetxController {
  var selectedIndex = 0.obs;

  // List of pages
  List<Widget> pages = [
   DashboardView(),
    AnalysisView(),
    MediaTabs(),
   ProfileView()
  ];

  void changePage(int index) {
    selectedIndex.value = index;
  }
}