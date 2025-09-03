import 'package:flutter/material.dart';

class RotationScreen extends StatefulWidget {
  const RotationScreen({super.key});

  @override
  State<RotationScreen> createState() => _RotationScreenState();
}

class _RotationScreenState extends State<RotationScreen> with SingleTickerProviderStateMixin{
  late AnimationController _animationController;
  late double currentValue;
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController=AnimationController(
      duration:Duration(seconds: 4), vsync: this
    );
    _animationController.repeat();
    _animationController.addListener((){
      currentValue=_animationController.value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$currentValue',style: TextStyle(fontSize: 25),),
            RotationTransition(
              child: Container(
                color:Colors.blue,
                height: 200,
                width: 200,
              ),
              turns: Tween<double>(begin:0,end:1).animate(_animationController),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed:(){
        setState(() {
          if(_animationController.isAnimating){
            _animationController.stop();
          }else{
            _animationController.repeat();
          }
        });
      }),
    );
  }
}
