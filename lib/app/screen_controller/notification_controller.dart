import 'package:get/get.dart';

class NotificationsController extends GetxController{
  var selectedIndex = 0.obs; // Observed variable for the selected tab

  void changeTabIndex(int index) {
    selectedIndex.value = index;
  }

  List<Notification> dummyNotifications = [
    Notification(
      title: "Welcome!",
      description: "Thanks for joining our app. We hope you enjoy the experience.",
      dateTime: DateTime.now().subtract(Duration(minutes: 5)),
    ),
    Notification(
      title: "Weekly Update",
      description: "Check out the latest updates for this week.",
      dateTime: DateTime.now().subtract(Duration(days: 1)),
    ),
    Notification(
      title: "New Feature",
      description: "We've added a new feature! Explore it now.",
      dateTime: DateTime.now().subtract(Duration(days: 2)),
    ),
    Notification(
      title: "Promotion Alert",
      description: "Get 20% off on all items this weekend.",
      dateTime: DateTime.now().subtract(Duration(hours: 12)),
    ),
    Notification(
      title: "System Maintenance",
      description: "Scheduled maintenance on Sunday from 12:00 AM to 4:00 AM.",
      dateTime: DateTime.now().subtract(Duration(days: 3)),
    ),
    Notification(
      title: "New Message",
      description: "You have a new message from support.",
      dateTime: DateTime.now().subtract(Duration(hours: 6)),
    ),
    Notification(
      title: "Reminder",
      description: "Don't forget your appointment tomorrow at 10:00 AM.",
      dateTime: DateTime.now().subtract(Duration(hours: 1)),
    ),
  ];

}
class Notification {
  final String title;
  final String description;
  final DateTime dateTime;

  Notification({
    required this.title,
    required this.description,
    required this.dateTime,
  });
}
