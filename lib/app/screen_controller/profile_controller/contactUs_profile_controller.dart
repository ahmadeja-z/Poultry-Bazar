import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ContactUsController extends GetxController{
  final subjectController=TextEditingController().obs;
  final emailController=TextEditingController().obs;
  final messageController=TextEditingController().obs;
  final subjectFocus=FocusNode().obs;
  final emailFocus=FocusNode().obs;
  final messageFocus=FocusNode().obs;

}