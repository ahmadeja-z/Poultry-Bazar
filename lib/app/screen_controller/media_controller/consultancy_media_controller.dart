import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ConsultancyMediaController extends GetxController {
  RxList<String> hensImageUrl = <String>[
    'https://images.pexels.com/photos/1405930/pexels-photo-1405930.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/1216482/pexels-photo-1216482.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/195226/pexels-photo-195226.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/58906/pexels-photo-58906.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/2421023/pexels-photo-2421023.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/754308/pexels-photo-754308.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/1152659/pexels-photo-1152659.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/3757197/pexels-photo-3757197.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/2255459/pexels-photo-2255459.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/375510/pexels-photo-375510.jpeg?auto=compress&cs=tinysrgb&w=600',

  ].obs;

  // Updated Titles for Hens Consultancy
  RxList<String> hensTitle = <String>[
    'Comprehensive Hen Care and Management',
    'Nutrition Plans for Optimal Hen Health',
    'Consultation on Hen Housing and Space Optimization',
    'Preventive Measures for Common Hen Diseases',
    'Maximizing Egg Production Through Expert Guidance',
    'Best Practices for Hen Biosecurity',
    'Consultancy on Hen Breeding Techniques',
    'Hen Behavioral Analysis and Solutions',
    'Addressing Feather Pecking and Other Issues',
    'Customized Hen Health Checkup Programs',
  ].obs;

  // Updated Subtitles for Hens Consultancy
  RxList<String> hensSubtitle = <String>[
    'Get expert advice on maintaining the health and welfare of your hens with comprehensive management strategies.',
    'Learn about the best nutrition plans tailored to your flock’s specific needs, ensuring optimal hen health.',
    'Receive professional consultancy on optimizing hen housing, ensuring proper space and environmental conditions.',
    'Stay ahead of potential diseases with expert guidance on preventive measures to keep your flock safe.',
    'Discover ways to enhance egg production with expert consultancy, maximizing the output of your hens.',
    'Learn about best practices for maintaining biosecurity on your farm, ensuring a healthy flock.',
    'Get professional advice on breeding hens, focusing on genetics, health, and productivity.',
    'Understand hen behavior patterns and get solutions to common behavioral issues affecting your flock.',
    'Address feather pecking, aggression, and other challenges with targeted solutions from our experts.',
    'Receive customized health checkup programs for your hens, tailored to your flock’s unique needs.'
  ].obs;

  // Dummy "Added By" Data
  RxList<String> hensAddedBy = <String>[
    'John Doe',
    'Jane Smith',
    'Mark Johnson',
    'Emily Davis',
    'Sarah Brown',
    'Michael Miller',
    'Linda Wilson',
    'Paul Garcia',
    'Laura Martinez',
    'Kevin Anderson'
  ].obs;

  // Dummy Date Data
  RxList<String> hensDate = <String>[
    'October 1, 2024',
    'October 2, 2024',
    'October 3, 2024',
    'October 4, 2024',
    'October 5, 2024',
    'October 6, 2024',
    'October 7, 2024',
    'October 8, 2024',
    'October 9, 2024',
    'October 10, 2024'
  ].obs;

  final searchController = TextEditingController();
  RxList<String> filteredHensTitle = <String>[].obs;


  @override
  void onInit() {
    super.onInit();
    filteredHensTitle.assignAll(hensTitle);

  }

  void filterResults(String query) {
    if (query.isEmpty) {
      // If the search query is empty, show all items
      filteredHensTitle.assignAll(hensTitle);

    } else {
      // Filter the list based on the query
      filteredHensTitle.assignAll(hensTitle.where((title) => title.toLowerCase().contains(query.toLowerCase())).toList());
    }
  }

}
