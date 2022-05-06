import 'package:animation_course/page_animation/page_animation.dart';
import 'package:animation_course/page_animation/page_animation_router.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>  with SingleTickerProviderStateMixin {
  late  AnimationController _animationController ;

  late Animation<double> _animatedLogo;
  late Animation<double> _animatedForms;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  void _setAnimatationSetting(){
      _animationController =new AnimationController(vsync: this , duration: Duration(seconds: 2));

      this._animatedForms = Tween<double>(begin: -200, end: 0.0).animate(CurvedAnimation(
         parent: _animationController,
         curve: Interval(0.0,0.033 ,curve: Curves.fastLinearToSlowEaseIn)
      ));
  }

  @override
  Widget build(BuildContext context) {
    Size DeviceSize = MediaQuery.of(context).size;

    return  Scaffold(
      body: Container(
         width:  DeviceSize.width,
         height: DeviceSize.height,
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.center,
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
              MaterialButton(
                color: Colors.deepOrangeAccent,
                onPressed:(){
                   Navigator.of(context).push(PageAnimationRouter(page: PageAnimation()));
                },
                child: Text("Page" , style: TextStyle(
                   color: Colors.white
                ),),
              )
           ],
         ),
      ),
    );
  }
}
