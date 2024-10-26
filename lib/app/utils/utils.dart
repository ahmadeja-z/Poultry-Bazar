import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Utils{
  static changeFocus(
      BuildContext context, FocusNode currentFocus, FocusNode nextNode) {
    currentFocus.unfocus();
    FocusScope.of(context).requestFocus(nextNode);
  }
  static void showSnackBar(String title, String message) {
    Get.snackbar(
      title,
      message,
      backgroundColor: Colors.green, // Success color
      colorText: Colors.white, // Text color
      icon: const Icon(
        Icons.check_circle_outline, // Success icon
        color: Colors.white,
      ),
      snackPosition: SnackPosition.TOP, // Position of snackBar
      margin: const EdgeInsets.all(10), // Margin around the snackBar
      borderRadius: 10, // Rounded corners
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10), // Padding inside the snackBar
      duration: const Duration(seconds: 3), // Duration for which snackBar is visible
      forwardAnimationCurve: Curves.easeOut, // Animation when snackBar appears
      reverseAnimationCurve: Curves.easeIn, // Animation when snackBar disappears
    );
  }
  static void showErrorSnackBar(String title, String message) {
    Get.snackbar(
      title,
      message,
      snackPosition: SnackPosition.TOP,
      backgroundColor:
      Colors.redAccent.withOpacity(0.9), // Transparent red background
      colorText: Colors.white,
      icon: const Icon(Icons.error_outline, color: Colors.white, size: 30),
      borderRadius: 15, // Increased border radius for a rounded look
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      padding: const EdgeInsets.all(20),
      barBlur: 5, // Adds a blur behind the SnackBar
      overlayBlur: 0.3, // Adds blur on the screen behind the SnackBar
      overlayColor: Colors.black54, // Dim the background when SnackBar is shown
      boxShadows: [
        BoxShadow(
          color: Colors.black.withOpacity(0.3),
          blurRadius: 10,
          spreadRadius: 2,
          offset: const Offset(0, 4), // Shadow below the SnackBar
        ),
      ],
      duration: const Duration(seconds: 4), // Stays longer for the user to read
      isDismissible: true,
      forwardAnimationCurve: Curves.easeInOut,
      reverseAnimationCurve: Curves.easeOut,
      shouldIconPulse: true, // The icon will pulse
      animationDuration: const Duration(milliseconds: 500), // Smooth appearance
    );
  }

}