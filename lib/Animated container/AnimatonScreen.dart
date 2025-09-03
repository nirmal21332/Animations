import 'package:flutter/material.dart';

class AnimatonHome extends StatefulWidget {
  const AnimatonHome({super.key});

  @override
  State<AnimatonHome> createState() => _AnimatonHomeState();
}

class _AnimatonHomeState extends State<AnimatonHome> {
  double _height=200;
  double _width=200;
  Color color=Colors.green;
  bool change=true;
  double opacity=0.2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedContainer(duration: Duration(milliseconds: 500),
        height:_height ,
          width: _width,
          color: color.withOpacity(opacity),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed:(){
        setState(() {
          if(change){
            _height=400;
            _width=400;
            opacity=1;
            color=Colors.red;
            change=false;
          }else{
            _height=200;
            _width=200;
            opacity=0.2;
            color=Colors.green;
            change=true;
          }
        });
      }),
    );
  }
}
