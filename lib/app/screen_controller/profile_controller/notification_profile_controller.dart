import 'package:get/get.dart';

class NotificationSettingController extends GetxController {
  // Observable list of notification settings
  var notifications = {
    'blogs': true.obs,
    'diseases': false.obs,
    'consultancyVideos': true.obs,
    'marketUpdates': true.obs,
  };

  // Method to toggle notification settings
  void toggleNotification(String key) {
    notifications[key]?.value = !notifications[key]!.value;

    // Print the new state when it changes
    print('$key notification is now ${notifications[key]?.value}');
  }
}
