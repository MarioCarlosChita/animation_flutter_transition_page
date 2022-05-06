import 'package:animation_course/models/document.dart';
import 'detail_book_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
     _HomePage createState()=> _HomePage();
}


class _HomePage extends State<HomePage> with TickerProviderStateMixin{
  late  AnimationController _animationController ;
  late  Animation<double> _animationDoubleProfile;
  late  Animation<double> _animationListDocument;

  
  Color _backgroundColor =  Color(0xFF077187);
  Color _cardColors = Colors.white;


  @override
  void initState() {
    this._setAnimationController();
    super.initState();
  }

  void _setAnimationController(){
    _animationController  = AnimationController(
        vsync: this ,
        duration: const Duration(seconds: 4)
    );

    _animationDoubleProfile = Tween<double>(begin: -300,end: 0.0).animate(
    CurvedAnimation(
        parent: _animationController,
        curve:  const Interval(0.0,0.125, curve: Curves.bounceInOut)
    ));

    _animationListDocument =  Tween<double>(begin: -400 , end:0.0).animate(
      CurvedAnimation(
          parent: _animationController ,
          curve: const Interval(0.125,0.400 , curve: Curves.fastLinearToSlowEaseIn)
      )
    );
    _animationController.addListener(() {
      setState(() {});
    });

    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
     return Scaffold(
         backgroundColor: _backgroundColor,
         body: SafeArea(
             child:Container(
             child:Column(
               children: [
                  Transform.translate(
                    offset: Offset(0.0, _animationDoubleProfile.value),
                    child: Card(
                      child: Container(
                        height: 200,
                        color: _cardColors,
                      ),
                    ),
                  ) ,
                  SizedBox(height:60,),
                  Transform.translate(
                    offset: Offset(_animationListDocument.value, 0.0),
                    child:   Container(
                    height: MediaQuery.of(context).size.height-360,
                    child: ListView.builder(
                        itemCount: listDocuments.length,
                        itemBuilder: (_ , posicao){
                          return InkWell(
                            onTap: (){
                              Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (_)=> DetailBookPage(document: listDocuments[posicao])));
                            },
                            child: Card(
                              child: Container(
                                height:80,
                                child: ListTile(
                                  title: Text(
                                    listDocuments[posicao].name.toUpperCase(),
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12
                                    ),),
                                  subtitle: Text(
                                    listDocuments[posicao].description,
                                    style: TextStyle(
                                      fontSize:10
                                    ),
                                  ),
                                  leading: Image.asset(listDocuments[posicao].urls),
                                ),
                              ),
                            ),

                          );
                        }
                    ),
                  ),)
               ],
             )
         )
         ),
         bottomNavigationBar: Container(
           height:  40,
           color: Colors.transparent,
           child: Row(
             crossAxisAlignment: CrossAxisAlignment.center,
             mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: [
               Icon(Icons.home_outlined, color:Colors.white , size: 20,),
               Icon(Icons.settings ,color:Colors.white, size: 20,) ,
               Icon(Icons.people , color: Colors.white, size: 20,)
             ],
           ),
         ),

     );
  }
}