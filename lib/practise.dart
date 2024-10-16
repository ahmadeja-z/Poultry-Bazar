// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// import 'app/screen_controller/dashboard_controller/dashboard_controller.dart';
//
// class CityDropdownSelection extends StatelessWidget {
//   final DashboardController controller = Get.put(DashboardController());
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Select Cities')),
//       body: Column(
//         children: [
//           // Dropdown Button for Cities
//           DropdownButton<String>(
//             hint: Text("Select City"),
//             icon: Icon(Icons.arrow_drop_down),
//             onTap: () => _showCitySelectionDialog(context), // Open dialog on tap
//             items: controller.selectedCities.map((city) {
//               return DropdownMenuItem<String>(
//                 value: city,
//                 child: Text(city),
//               );
//             }).toList(),
//           ),
//
//           // List of selected cities
//           Expanded(
//             child: Obx(() => ListView.builder(
//               itemCount: controller.selectedCities.length,
//               itemBuilder: (context, index) {
//                 return ListTile(
//                   title: Text(controller.selectedCities[index]),
//                   trailing: IconButton(
//                     icon: Icon(Icons.delete),
//                     onPressed: () {
//                       controller.selectedCities.removeAt(index); // Remove city
//                     },
//                   ),
//                 );
//               },
//             )),
//           )
//         ],
//       ),
//     );
//   }
//
//   // Function to show the city selection dialog with radio buttons
//   void _showCitySelectionDialog(BuildContext context) {
//     Get.dialog(
//       Dialog(
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Text(
//                 'Select a City',
//                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//               ),
//             ),
//             Obx(() => ListView.builder(
//               shrinkWrap: true,
//               itemCount: controller.allCities.length,
//               itemBuilder: (context, index) {
//                 String city = controller.allCities[index];
//
//                 return RadioListTile<String>(
//                   title: Text(city),
//                   value: city,
//                   groupValue: controller.selectedCity.value,
//                   onChanged: (value) {
//                     controller.setSelectedCity(value!);
//                     Get.back(); // Close dialog after selection
//                   },
//                 );
//               },
//             )),
//           ],
//         ),
//       ),
//     );
//   }
// }
