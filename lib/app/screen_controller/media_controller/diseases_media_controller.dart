import 'package:get/get.dart';

class DiseasesMediaController extends GetxController {
  // Existing dummy data for blogs
  RxList<String> hensImageUrl = <String>[
    'https://images.pexels.com/photos/375510/pexels-photo-375510.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/1405930/pexels-photo-1405930.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/1216482/pexels-photo-1216482.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/195226/pexels-photo-195226.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/754308/pexels-photo-754308.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/1152659/pexels-photo-1152659.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/3757197/pexels-photo-3757197.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/2255459/pexels-photo-2255459.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/58906/pexels-photo-58906.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/2421023/pexels-photo-2421023.jpeg?auto=compress&cs=tinysrgb&w=600'
  ].obs;

  // Dummy Titles for Hens Diseases
  RxList<String> hensTitle = <String>[
    'Avian Influenza: Understanding Symptoms and Treatment',
    'Coccidiosis in Hens: Prevention and Management Strategies',
    'Marek’s Disease: What Every Poultry Keeper Should Know',
    'Salmonella: Risks, Symptoms, and Best Practices',
    'Newcastle Disease: Identifying and Responding to Outbreaks',
    'Respiratory Diseases in Hens: Causes and Treatments',
    'Fowl Pox: Symptoms, Transmission, and Prevention',
    'Worm Infestations in Hens: Signs and Treatment Options',
    'Bacterial Infections in Poultry: Common Types and Solutions',
    'Egg Drop Syndrome: What It Means for Your Flock'
  ].obs;

  // Dummy Subtitles for Hens Diseases
  RxList<String> hensSubtitle = <String>[
    'Learn how Avian Influenza affects hens, its symptoms, and the best treatment options available to ensure flock health and safety.',
    'Coccidiosis is a common disease in poultry. This guide covers its prevention and management strategies to keep your hens healthy.',
    'Marek’s Disease can significantly impact your flock. Discover essential information about its symptoms and prevention measures.',
    'Understanding Salmonella in hens is crucial for food safety. This article discusses risks, symptoms, and the best practices for prevention.',
    'Newcastle Disease poses a serious threat to poultry. Learn how to identify outbreaks and respond effectively to protect your flock.',
    'Respiratory diseases can affect hen health. This guide discusses common causes and treatments for respiratory issues in poultry.',
    'Fowl Pox is a viral infection that can affect hens. Learn about its symptoms, transmission, and how to prevent its spread in your flock.',
    'Worm infestations can significantly impact hen health. This article explores signs of infestations and effective treatment options.',
    'Bacterial infections can pose serious risks to your flock. Understand common types and effective solutions to manage these infections.',
    'Egg Drop Syndrome affects egg production in hens. Learn what it means for your flock and how to manage the condition effectively.'
  ].obs;
}
