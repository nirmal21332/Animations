import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late Animation animation;
  late AnimationController animationController;
  late Animation colorAnimation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    animation = Tween(begin: 100.0, end: 200.0).animate(animationController);
    colorAnimation = ColorTween(
      begin: Colors.red,
      end: Colors.green,
    ).animate(animationController);
    animationController.addListener(() {
      setState(() {});
    });
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Wheel Scroll View'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          color: colorAnimation.value,
          height: animation.value,
          width: animation.value,
        ),
      ),
    );
  }
}
