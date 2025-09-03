import 'package:animatons/Implict/Container.dart';
import 'package:flutter/material.dart';

import 'Animated container/AnimatonScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3:false,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home:AnimatonHome(),
    );
  }
}
