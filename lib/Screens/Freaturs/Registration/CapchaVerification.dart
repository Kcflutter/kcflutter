import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/avd.dart';
import 'package:flutter_svg/svg.dart';
import 'package:krishnacomingflutter/Screens/Freaturs/Dashboard/DashboardScreen.dart';
import 'package:krishnacomingflutter/Screens/Freaturs/OtpVerificationn/OtpVerification.dart';

import '../../../constant.dart';
import '../loginregselction/LoginRegistrationSelection.dart';

class CapchaVerification extends StatefulWidget {
  const CapchaVerification({Key? key}) : super(key: key);

  @override
  _CapchaVerificationState createState() => _CapchaVerificationState();
}

class _CapchaVerificationState extends State<CapchaVerification> {
  final String assetName = 'assets/images.svg';
  TextEditingController edtCapchaController =  new TextEditingController();
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
              Row(
                children: [
                  SizedBox(width: 10,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.arrow_back_ios,size: 20,color: grayTextColor,),
                  ),
                  Text("Back",style: TextStyle(color: grayTextColor,fontSize: 16,fontFamily: 'Futura'),)
                ],
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
                    child: SingleChildScrollView(
                      child: Container(
                        margin: EdgeInsets.only(top: 40,),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 20,),
                            Text("Verification",style: TextStyle(color: grayTextColor,fontFamily: 'Trebuchet',fontSize: 15),),
                            SizedBox(height: 20,),
                           Container(
                             margin: EdgeInsets.only(left: 20,right: 20,bottom: 10),
                             height: 155,
                             width: MediaQuery.of(context).size.width,
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(10),
                               border: Border.all(color:edt_bg ,width: 2)
                             ),
                             child: Column(
                             //  mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 SizedBox(height: 10,),
                                 Text("Security Code",style: TextStyle(color: grayTextColor,fontFamily: 'Trebuchet',fontSize: 12),),
                                 SizedBox(height: 5,),
                                 Text("MSGB1y",style: TextStyle(color: chahetxt,fontFamily: 'Futura',fontSize: 24,fontWeight: FontWeight.bold),),
                                 SizedBox(height: 10,),
                                 Stack(
                                   alignment: Alignment.center,
                                  children: <Widget> [
                                    Container(
                                    height: 85,
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
                                        color: edt_bg
                                    ),
                                  ),
                                    Positioned(
                                      bottom: 20,
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                          height: 40,
                                          width: MediaQuery.of(context).size.width * 0.8,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(25),
                                            color: Colors.white
                                          ),
                                          child: Center(
                                            child: Align(
                                              alignment: Alignment.center,
                                              child: Container(
                                                child: TextFormField(
                                                  textAlign: TextAlign. center,
                                                  cursorColor: Colors.black,
                                                  cursorWidth: 1,
                                                  cursorHeight: 2,
                                                  keyboardType: TextInputType.text,
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      fontFamily: "Trebuchet",
                                                      color: grayTextColor
                                                  ),
                                                  controller: edtCapchaController,
                                                  decoration: InputDecoration(
                                                      border: InputBorder.none,
                                                      hintText: "Enter the above security code here",
                                                      hintStyle: TextStyle(color: hintColor)
                                                    // labelText: hint,
                                                  ),
                                                  inputFormatters: [
                                                    FilteringTextInputFormatter.allow(RegExp("[a-zA-z0-9]"))
                                                  ],
                                                  //passing the reference of the validation mixin, not calling directly
                                                  onSaved: (String? value) {},
                                                  //  onEditingComplete: () => node.nextFocus(),
                                                  // validator: validators,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 65,
                                      right: 0,
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                          height: 20,
                                          width: 150,
                                          child: Text("Can’t Read? Refresh",style: TextStyle(color: chahetxtagain,fontSize: 12,fontFamily: 'Trebuchet'),),
                                        ),
                                      ),
                                    )
                                  ],
                                 )
                               ],
                             ),
                           ),
                           // SvgPicture.asset('assets/images/ic_welcome_screen_verification_bg.svg',height: 100,width: 100,),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => OtpVerification()),
                                );
                              },
                              child: Container(
                                height: 45,
                                width: 130,
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
                                  width: 130,
                                  alignment: Alignment.center,
                                  child: const Text(
                                    'Next',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontFamily: "Trebuchet",color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 20,),
                          ],
                        ),
                      ),
                    )
                ),
              )


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
}
