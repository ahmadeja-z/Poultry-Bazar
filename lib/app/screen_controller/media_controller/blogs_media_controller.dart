import 'package:get/get.dart';

class BlogsMediaController extends GetxController {

  RxBool isGrid=false.obs;
  RxList<String> hensImageUrl = <String>[
    'https://images.pexels.com/photos/754308/pexels-photo-754308.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/1152659/pexels-photo-1152659.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/3757197/pexels-photo-3757197.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/2255459/pexels-photo-2255459.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/375510/pexels-photo-375510.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/1405930/pexels-photo-1405930.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/1216482/pexels-photo-1216482.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/195226/pexels-photo-195226.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/58906/pexels-photo-58906.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/2421023/pexels-photo-2421023.jpeg?auto=compress&cs=tinysrgb&w=600'
  ].obs;

  // Dummy Titles for Blogs
  RxList<String> hensTitle = <String>[
    'The Fascinating World of Hens and How They Contribute to Sustainable Farming Practices Around the Globe',
    'The Ultimate Guide to Maintaining a Healthy Hen Diet with Nutritional Balance and Proper Care Techniques',
    'Raising Happy Hens: Everything You Need to Know About Providing Comfort and Care for Your Birds',
    'Understanding Essential Hen Habits Every Poultry Owner Should Observe for Optimal Flock Management',
    'Setting Up The Perfect Hen House to Ensure Maximum Comfort, Safety, and Egg Production Year-Round',
    'The Complete Guide to Free-Range Hen Care, Offering Insights into Nutrition, Housing, and Wellbeing',
    'Exploring the Most Common Hen Breeds and Their Unique Characteristics in Different Farming Conditions',
    'Important Hen Health Tips: Identifying Common Illnesses and Ensuring the Best Care for Your Flock',
    'The Right Way to Feed Your Flock: Practical Advice for Keeping Hens Healthy and Egg Production High',
    'Understanding Hen Egg-Laying Cycles and How They Affect Productivity in Small and Large Flocks Alike'
  ].obs;


  // Dummy Subtitles for Blogs
  RxList<String> hensSubtitle = <String>[
    'Explore the fascinating world of hen behavior, covering their social structures, communication methods, and the importance of the pecking order in maintaining flock harmony. Learn how hens interact with each other and their environment, ensuring a balanced and healthy flock.',

    'A deep dive into the nutritional needs of hens, including the essential components of a balanced diet such as grains, proteins, vitamins, and minerals. Discover the impact of nutrition on egg production, feather health, and overall vitality, along with tips on providing a varied and enriching diet.',

    'Ensure your hens lead healthy and happy lives by providing the right environment and care. From managing their physical health with proper space and exercise to promoting mental well-being through social interactions and stimulation, this guide covers all the essentials for thriving hens.',

    'Uncover the key behaviors that reveal the well-being of your hens, including foraging habits, dust bathing, and nesting activities. This detailed exploration helps you interpret their actions and identify potential health issues early, ensuring your flock remains in optimal condition.',

    'Creating the perfect hen house involves more than just building a shelter—it requires careful planning for space, lighting, ventilation, and security. This guide offers expert advice on constructing a safe, comfortable, and functional living environment for your hens, complete with tips on predator-proofing and sanitation.',

    'Free-range hens require special care to thrive in open environments. Learn how to manage their nutritional needs, monitor their health, and provide safe outdoor spaces. This guide also covers how to deal with weather changes, predator threats, and ensuring they have access to shelter and food.',

    'An in-depth exploration of the most popular hen breeds, from prolific egg-layers to dual-purpose breeds. Understand the distinct physical characteristics, temperaments, and care needs of each breed, helping you choose the best hens for your farm or backyard based on your specific goals.',

    'Keeping your hens healthy involves more than just feeding them; it’s about managing common diseases, injuries, and environmental factors. This guide explains how to monitor your hens for signs of illness, administer basic first aid, and maintain a clean and disease-free living space.',

    'Feeding hens isn’t just about filling a feeder—this guide covers the importance of providing a balanced diet at different stages of life, how to create feeding schedules, and what supplements can boost their health. Learn how to avoid common feeding mistakes and ensure your hens stay strong and productive.',

    'Understanding the egg-laying process is crucial for maintaining a productive flock. This guide explains the factors that influence egg production, including diet, daylight exposure, and the age of the hens. Discover tips for managing laying cycles, nesting boxes, and what to do when production drops.'
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

  void changeLayout(){
    isGrid.value= !isGrid.value;
    print(isGrid);
  }
}

