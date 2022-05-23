import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../loginregselction/LoginRegistrationSelection.dart';


class SelectLanguage extends StatefulWidget {
  const SelectLanguage({Key? key}) : super(key: key);

  @override
  _SelectLanguageState createState() => _SelectLanguageState();
}

class _SelectLanguageState extends State<SelectLanguage> {
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
                        height: MediaQuery.of(context).size.height * 0.36,
                        width: MediaQuery.of(context).size.width,
                        child: Image(image: AssetImage('assets/images/splash_arc.png'),fit: BoxFit.cover,)),
                    Container(
                      margin: EdgeInsets.only(top: 30,),
                      height: 200,width: 500,
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(child: Text("Select Your language",style: TextStyle(fontSize: 20,color: Colors.black,fontFamily: 'Trebuchet'))),
                            SizedBox(height: 6,),
                            Center(child: Text("अपनी भाषा का चयन करें",style: TextStyle(fontSize: 18,color: Colors.black)),),
                            SizedBox(height: 30,),
                            Center(
                              child: Row(
                                //mainAxisSize: MainAxisSize.max,
                                //crossAxisAlignment: CrossAxisAlignment.center,
                                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                 children: [
                                   Spacer(),
                                  RaisedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => const LoginRegistartionSelection()),
                                      );
                                    },
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0), side: BorderSide(color: Colors.grey, width: 1),),
                                    padding: const EdgeInsets.all(0.0),
                                    child: Ink(
                                      decoration: const BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                          colors: <Color>[purple,blue],),
                                        borderRadius: BorderRadius.all(Radius.circular(80.0)),
                                      ),
                                      child: Container(
                                        constraints: const BoxConstraints(minWidth: 88.0, minHeight: 36.0), // min sizes for Material buttons
                                        alignment: Alignment.center,
                                        child: const Text(
                                          'हिंदी',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(fontFamily: "Trebuchet",color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  RaisedButton(
                                    onPressed: () {
                                      Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const LoginRegistartionSelection()),
                                    );
                                      },
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0), side: BorderSide(color: Colors.grey, width: 1),),
                                    padding: const EdgeInsets.all(0.0),
                                    child: Ink(
                                      decoration: const BoxDecoration(

                                        gradient: LinearGradient(
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                          colors: <Color>[purple, blue],),
                                        borderRadius: BorderRadius.all(Radius.circular(80.0)),
                                      ),
                                      child: Container(
                                        constraints: const BoxConstraints(minWidth: 88.0, minHeight: 36.0), // min sizes for Material buttons
                                        alignment: Alignment.center,
                                        child: const Text(
                                          'English',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(fontFamily: "Trebuchet",color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                   Spacer()
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ),

                  ],
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
