
// Controller to handle navigation bar state
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../screen/navbar_screens/nav_bar_screen.dart';

class NavController extends GetxController {
  var selectedIndex = 0.obs;

  // List of pages
  List<Widget> pages = [
    DashboardPage(),
    AnalysisPage(),
    MediaPage(),
    ProfilePage(),
  ];

  void changePage(int index) {
    selectedIndex.value = index;
  }
}