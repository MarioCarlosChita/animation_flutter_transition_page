import 'dart:ui';

import 'package:flutter/material.dart';


class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {

  late Color  _firstAnimatedContainer = Colors.white;
  late Color _secondAnimatedContainer = Colors.green;

  late Color _animationText =  Colors.grey;

  late Color __background = Colors.white;

  late Color __animatedContainer = Colors.green;
  late double _widthContainer = 100;
  late double _heightContainer=  100;

  late BorderRadius  _borderContainer = BorderRadius.circular(50);


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
         backgroundColor: Colors.white,
         appBar: new AppBar(
            backgroundColor:this.__background,
            leading:Icon(Icons.people, size: 25,
              color:this.__background ==Colors.green ? Colors.white:Colors.green
              ,) ,
            elevation: 0,
            actions: [
                 Icon(
                   Icons.lock_clock,size: 25,
                   color:this.__background == Colors.green ?Colors.white: Colors.green,
                 ),
                 SizedBox(width:20,)
            ],
         ),
         body: AnimatedContainer(
           duration: Duration(seconds: 2),
           color: _firstAnimatedContainer ,
           curve: Curves.fastLinearToSlowEaseIn,
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.center,
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               Center(
                 child:Column(
                   crossAxisAlignment: CrossAxisAlignment.center,
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text("BE  AMAZING ",style: TextStyle(
                         color: _animationText,
                         fontSize: 18
                     ),),
                     SizedBox(height:2),
                     Text("TODAY",style: TextStyle(
                         color: _animationText,
                         fontSize: 18
                     ),),
                   ],
                 ),
               ) ,
               Center(
                 child: InkWell(
                   onTap: (){
                     setState(() {
                       Color temp = _firstAnimatedContainer;
                       _firstAnimatedContainer =  _secondAnimatedContainer ;
                       _secondAnimatedContainer =  temp;

                       if(_animationText == Colors.white)
                            _animationText = Colors.grey;
                       else
                            _animationText =Colors.white;
                     });
                   },
                   child:  AnimatedContainer(
                     duration: Duration(milliseconds:250),
                     curve: Curves.linear,
                     width: _widthContainer,
                     height:_heightContainer,
                     decoration: BoxDecoration(
                       borderRadius: _borderContainer,
                       color:_secondAnimatedContainer,
                     ),
                     child: Icon(Icons.check, color:_firstAnimatedContainer, size: 54),
                   ),
                 ),
               ) ,
               SizedBox(height:20,) ,
               Container(
                  child:Column(
                     crossAxisAlignment: CrossAxisAlignment.center,
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                           Text("STREAK",style: TextStyle(
                               color: _animationText,
                               fontSize: 18
                           ),),
                           SizedBox(height:4,),
                           Text("18",style:TextStyle(
                               fontSize:38 ,
                               color: _secondAnimatedContainer
                           ) ,)


                     ],
                  ),
               )
             ],
           ),
         )
    );
  }
}
