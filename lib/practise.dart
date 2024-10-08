import 'package:flutter/material.dart';

class ExpansionTileExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Expansion Tile Example')),
      body: ListView(
        children: List.generate(10, (index) {
          return ExpansionTile(
            title: Text('Item $index'),
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text('Expanded content for item $index.'),
              ),
            ],
          );
        }),
      ),
    );
  }
}

