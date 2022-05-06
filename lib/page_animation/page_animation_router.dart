import 'package:flutter/material.dart';
class PageAnimationRouter extends PageRouteBuilder{
   Widget page;
  PageAnimationRouter({required this.page}):super(
     pageBuilder: (
         BuildContext context,
         Animation<double> animation ,
         Animation<double>  secondanimation
         )=> page,
    transitionsBuilder: (
       BuildContext context ,
       Animation<double> animation ,
       Animation<double> secondanimation ,
       Widget child
     )=>  SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(-1, 0),
        end: Offset.zero,
      ).animate(animation),
      child: child,
    )
  );
}
