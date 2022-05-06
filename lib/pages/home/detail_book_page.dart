import 'dart:ui';

import 'package:animation_course/models/document.dart';
import 'package:flutter/material.dart';


class DetailBookPage extends StatefulWidget {
  Document document ;
  DetailBookPage({ required this.document});

  @override
  _DetailBookPageState createState() => _DetailBookPageState();
}

class _DetailBookPageState extends State<DetailBookPage>  with TickerProviderStateMixin {

  Color _backgroundColor =  Color(0xFF077187);
  Color _cardColors = Colors.white;

  late AnimationController _animationController ;
  late Animation<double> _pageAnimation ;


  @override
  void initState() {
   this._settingAnimations();
   super.initState();
  }


  void _settingAnimations(){
    _animationController = new AnimationController(
        vsync: this ,
        duration: const Duration(seconds: 2)
    );
    _pageAnimation = new Tween<double>(begin:0.0 ,end: 1).animate(
         CurvedAnimation(
             parent: _animationController,
             curve: const Interval(0.0,0.200 ,curve: Curves.linear)
         )
     );

    _animationController.addListener(() {
      setState(() {});
    });
    this._animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: _backgroundColor,
        appBar: new AppBar(
          elevation: 0,
          backgroundColor: _backgroundColor,
        ),
        body: Opacity(
            opacity: _pageAnimation.value,
            child:Container(
              color: _backgroundColor,
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  Text("Angola", style:TextStyle(
                      color: Colors.white,
                      fontSize: 54
                  ),)
                ],
              ),
            )
        ),
    );
  }
}
