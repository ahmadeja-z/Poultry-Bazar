// import 'package:bottom_navy_bar/bottom_navy_bar.dart';
// import 'package:flutter/material.dart';
// import 'package:poultry/app/resources/app_colors/app_colors.dart';
//
// class PractiseWidget extends StatefulWidget {
//   const PractiseWidget({Key? key}) : super(key: key);
//
//   @override
//   _PractiseWidgetState createState() => _PractiseWidgetState();
// }
//
// class _PractiseWidgetState extends State<PractiseWidget> {
//   int _selectedIndex = 0;
//   final PageController _pageController = PageController();
//
//   @override
//   void dispose() {
//     _pageController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Hello World'),
//         centerTitle: true,
//         elevation: 3,
//         backgroundColor: Colors.white,
//       ),
//       body: Stack(
//         children: [
//           SizedBox(
//             height: double.infinity,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Align(
//                   alignment: Alignment.topLeft,
//                   child: Container(
//                     height: 100,
//                     width: 100,
//                     color: AppColors.grey,
//                   ),
//                 ),
//                 Align(
//                   alignment: Alignment.center,
//                   child: Container(
//                     height: 100,
//                     width: 100,
//                     color: AppColors.grey,
//                   ),
//                 ),
//                 Align(
//                   alignment: Alignment.bottomRight,
//                   child: GestureDetector(
//                     onTap: () {
//                       print('Tapped');
//                     },
//                     child: Container(
//                       height: 100,
//                       width: 100,
//                       color: AppColors.grey,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           )
//         ],
//       ),
//       bottomNavigationBar: BottomNavyBar(
//         selectedIndex: _selectedIndex,
//         showElevation: true, // use this to remove appBar's elevation
//         onItemSelected: (index) {
//           setState(() {
//             _selectedIndex = index;
//           });
//           _pageController.animateToPage(
//             index,
//             duration: const Duration(milliseconds: 300),
//             curve: Curves.ease,
//           );
//         },
//         items: [
//           BottomNavyBarItem(
//             icon: const Icon(Icons.apps),
//             title: const Text('Home'),
//             activeColor: Colors.red,
//           ),
//           BottomNavyBarItem(
//             icon: const Icon(Icons.people),
//             title: const Text('Users'),
//             activeColor: Colors.purpleAccent,
//           ),
//           BottomNavyBarItem(
//             icon: const Icon(Icons.message),
//             title: const Text('Messages'),
//             activeColor: Colors.pink,
//           ),
//           BottomNavyBarItem(
//             icon: const Icon(Icons.settings),
//             title: const Text('Settings'),
//             activeColor: Colors.blue,
//           ),
//         ],
//       ),
//     );
//   }
// }
