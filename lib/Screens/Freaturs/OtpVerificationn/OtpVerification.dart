import 'dart:async';

import 'package:flutter/material.dart';
import 'package:krishnacomingflutter/Screens/Freaturs/Dashboard/DashboardScreen.dart';

import '../../../constant.dart';


class OtpVerification extends StatefulWidget {
  const OtpVerification({Key? key}) : super(key: key);

  @override
  State<OtpVerification> createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(
        Duration(seconds: 5),
            () =>
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => Dashboard()))
    );
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
            Container(
              margin: EdgeInsets.only(top: 10),
              height: MediaQuery.of(context).size.height * 0.8,
              width: MediaQuery.of(context).size.width,
              child: Image(image: AssetImage('assets/images/splash_lady_new.png'),),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  height: MediaQuery.of(context).size.height * 0.51,
                  width: MediaQuery.of(context).size.width,
                  decoration:  BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/splash_arc.png'),fit: BoxFit.cover,),
                  ),
                  child: Container(),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Color(0xF2000000)
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Text('Please Wait For Automatic OTP verifaction',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 22, color: Colors.white,fontFamily: 'Trbuchet')),

                    SizedBox(
                      height: 30,
                    ),

                    Text('Do not exit / minimize the app',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: yellowColor, fontSize: 18,fontFamily: 'Trbuchet'),),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      // margin: EdgeInsets.all(20),
                      child:  Image(image: AssetImage('assets/images/baby_black_text.png'),height: 100,width: 100,),
                    ),
                    SizedBox(
                      height: 20,
                    ),

                    Container(
                      margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
                      child: Text('If OTP is not verfied in 30 sec..please press‘resend’ below',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: yellowColor, fontSize: 14,fontFamily: 'Trbuchet'),),
                    ),

                    SizedBox(
                      height: 40,
                    ),

                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 45,
                        width: 150,
                        decoration:   BoxDecoration(
                          border: Border.all(color: Colors.grey,width: 1,),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: <Color>[purple, blue],),
                          borderRadius: const BorderRadius.all(Radius.circular(80.0)),
                        ),
                        child: Container(
                          height: 45,
                          width: 150,
                          alignment: Alignment.center,
                          child: const Text(
                            'OTP Resend',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontFamily: "Trebuchet",color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      child: Text('Helpline (subscription related)',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: grayTextColor, fontSize: 14,fontFamily: 'futura'),),
                    ),
                    Container(
                      child: Text('+91 6262041984',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: grayTextColor, fontSize: 14,fontFamily: 'futura'),),
                    ),
                    Container(
                      child: Text('info@krishnacoming.com',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: grayTextColor, fontSize: 14,fontFamily: 'futura'),),
                    ),

                  ],
                ),
              ),
            ),
          ],
        )
      ),
    );
  }
}
