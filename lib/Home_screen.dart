import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{

  late Animation _animation;
  late AnimationController _animationController;

  var listRadius=[100.0,150.0,200.0,250.0,300.0];

  @override
  void initState() {
    super.initState();

    _animationController=AnimationController(vsync: this,duration: Duration(seconds:4),lowerBound: 0.2);
    _animation=Tween(begin: 0.0,end: 1.0).animate(_animationController);
    _animationController.addListener((){
      setState(() {
      });
    });
    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ripple Effect'),
        centerTitle: true,
      ),
      body: Center(
        child: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              buildMyContainer(listRadius[0]),
              buildMyContainer(listRadius[1]),
              buildMyContainer(listRadius[2]),
              buildMyContainer(listRadius[3]),
              buildMyContainer(listRadius[4]),
Icon(Icons.add_call)

            ]
          ),
        )
      ),
    );
  }

  Container buildMyContainer(double radius) {
    return Container(
              width: radius*_animation.value,
              height: radius*_animation.value,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue.withOpacity(1.0 - _animation.value)
              ),
            );
  }
}
