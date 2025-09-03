import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Hero(tag:'background', child:Image.asset('assets/animation/bg.jpg')),
        ),
      ),
    );
  }
}
