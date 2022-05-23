
import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:krishnacomingflutter/Screens/Freaturs/SplashScreen/LanguageSelection.dart';
import 'package:krishnacomingflutter/constant.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> with TickerProviderStateMixin {

   Animation<double>? animation;
   AnimationController? animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(
        Duration(seconds: 5),
            () =>
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => SelectLanguage()))
    );
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
    animation = Tween<double>(begin: 0, end: -300).animate(animationController!)
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          animationController!.reverse();
        } else if (status == AnimationStatus.dismissed) {
          animationController!.forward();
        }
      });
    animationController!.forward();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image:AssetImage('assets/images/bg_green.png'),fit: BoxFit.cover,
                  )
                ),
              ),
             SizedBox(
               height: MediaQuery.of(context).size.height * 0.7,
               width: MediaQuery.of(context).size.width,
               child: Image(image: AssetImage('assets/images/splash_lady_new.png'),),
             ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Stack(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.34,
                        width: MediaQuery.of(context).size.width,
                        child: Image(image: AssetImage('assets/images/splash_arc.png'),fit: BoxFit.cover,)),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      height: 200,width: 500,
                      //height: animation!.value,
                      //width: animation!.value,
                      child:
                     // AnimatedLogo(animation: animation!,),
                      Image(image: AssetImage('assets/images/ic_krishna_coming_logo.PNG'),height: 200,width: 500,),
                    ),
                   /* Container(
                      height: 150,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(70),
                              topRight: Radius.circular(70))
                      ),
                    ),*/
                 /*   Container(
                      height: 10,
                     decoration: BoxDecoration(
                         gradient: LinearGradient(
                             begin: Alignment.topLeft,
                             end: Alignment.bottomRight,
                             colors: [Color(0xA06FFC), Colors.orange])),
                     ),*/
                  ],
                ),
              )
            /*  Align(
                alignment: Alignment.bottomCenter,
                child: ClipPath(
                  clipper:ArcClipper(),
                  child:  Container(
                    height: 150,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))
                    ),
                  ) ,
                ),
              )*/

               ],
             ) ,
          bottomSheet:    Container(
            height: 10,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Colors.blue, Colors.purple])),
          ),
          )
      );

    }
   @override
   void dispose() {
     animationController!.dispose();
     super.dispose();
   }
  }

class AnimatedLogo extends AnimatedWidget {
  const AnimatedLogo({Key? key, required Animation<double> animation})
      : super(key: key, listenable: animation);

  // Make the Tweens static because they don't change.
  static final _opacityTween = Tween<double>(begin: 0.1, end: 1);
  static final _sizeTween = Tween<double>(begin: 0, end: 300);

  @override
  Widget build(BuildContext context) {
    final animation = listenable as Animation<double>;
    return Center(
      child: Opacity(
        opacity: _opacityTween.evaluate(animation),
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          height: _sizeTween.evaluate(animation),
          width: _sizeTween.evaluate(animation),
          child: const FlutterLogo(),
        ),
      ),
    );
  }
}
