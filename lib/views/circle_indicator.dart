import 'package:flutter/material.dart';


class CircleIndicator extends StatefulWidget {
  @override
  _CircleIndicatorState createState() => _CircleIndicatorState();
}

class _CircleIndicatorState extends State<CircleIndicator> with SingleTickerProviderStateMixin {
  AnimationController ? _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3),
    )..addListener(() {
        setState(() {});
      });

    _animationController!.forward();

    Future.delayed(Duration(seconds: 3), () {
      _animationController!.dispose();
    });
  }

  @override
  void dispose() {
    _animationController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Circular Progress Indicator'),
        ),
        body: Center(
          child: CircularProgressIndicator(
            value: _animationController!.value,
          ),

        ),
      ),
    );
  }
}