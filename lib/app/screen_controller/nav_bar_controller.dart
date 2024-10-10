
// Controller to handle navigation bar state
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:poultry/app/screen/navbar_screens/profile_view/profile_view.dart';

import '../screen/navbar_screens/media_view/media_tabs.dart';
import '../screen/navbar_screens/nav_bar_screen.dart';

class NavController extends GetxController {
  var selectedIndex = 0.obs;

  // List of pages
  List<Widget> pages = [
    DashboardPage(),
    AnalysisPage(),
    MediaTabs(),
   ProfileView()
  ];

  void changePage(int index) {
    selectedIndex.value = index;
  }
}