import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CitySelectionScreen(),
    );
  }
}

class CitySelectionScreen extends StatefulWidget {
  @override
  _CitySelectionScreenState createState() => _CitySelectionScreenState();
}

class _CitySelectionScreenState extends State<CitySelectionScreen> {
  final List<String> allCities = [
    'New York',
    'Los Angeles',
    'Chicago',
    'Houston',
    'Phoenix',
    'Philadelphia',
    'San Antonio',
    'San Diego',
    'Dallas',
    'San Jose',
  ];

  List<String> selectedCities = [];

  void toggleCitySelection(String city) {
    setState(() {
      if (selectedCities.contains(city)) {
        selectedCities.remove(city);
      } else {
        selectedCities.add(city);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Cities'),
        actions: [
          PopupMenuButton<String>(

            icon: Icon(Icons.add_location),
            onSelected: toggleCitySelection,
            itemBuilder: (BuildContext context) {
              return allCities.map((String city) {
                return PopupMenuItem<String>(
                  height: 2,
                  value: city,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(city),
                      if (selectedCities.contains(city))
                        Icon(Icons.check, color: Colors.green),
                    ],
                  ),
                );
              }).toList();
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Selected Cities:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: selectedCities.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(selectedCities[index]),
                    trailing: IconButton(
                      icon: Icon(Icons.delete, color: Colors.red),
                      onPressed: () {
                        toggleCitySelection(selectedCities[index]);
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
