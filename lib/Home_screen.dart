import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var arrIndex = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11,12];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('List Wheel Scroll View'), centerTitle: true),
      body: ListWheelScrollView(
        itemExtent: 200,
        children: arrIndex.map((value) {
          return Card(
            child: SizedBox(
              width:double.infinity,
              height: 150,
              child: Center(
                child: Text("Fixed Size Card"),
              ),
            ),
          );

        }).toList(),
      ),
    );
  }
}
