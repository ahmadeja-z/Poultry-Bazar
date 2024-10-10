import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class UserProfileController extends GetxController{
  final userNameController=TextEditingController().obs;
  final emailController=TextEditingController().obs;
  final addressController=TextEditingController().obs;
  final passwordController=TextEditingController().obs;
final emailFocus=FocusNode().obs;
final userNameFocus=FocusNode().obs;
final addressFocus=FocusNode().obs;
final passwordFocus=FocusNode().obs;
}