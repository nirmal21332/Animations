import 'package:animatons/detail_page.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Hero Animation'),
      ),
      body:Container(
        child: Center(
          child: InkWell(
            onTap:(){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>DetailPage()));
            },
            child: Hero(
              child: Image.asset('assets/animation/bg.jpg',width: 100,height: 100,),
              tag: 'background',
            ),
          ),
        ),
      ),
    );
  }
}
