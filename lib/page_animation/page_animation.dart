import 'package:flutter/material.dart';

class PageAnimation extends StatefulWidget {
  @override
  _PageAnimationState createState() => _PageAnimationState();
}

class _PageAnimationState extends State<PageAnimation> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
           backgroundColor: Colors.orangeAccent,
           elevation: 0,
        ),
        backgroundColor:Colors.orangeAccent,
    );
  }
}
