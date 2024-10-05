import 'package:get/get.dart';
import 'package:poultry/app/resources/routes/routes_name.dart';
import 'package:poultry/app/screen/practise.dart';

class AppRoutes{
  static appRoute()=>[
    GetPage(name: RoutesName.practise, page: () => const PractiseHomePage()),

  ];
}