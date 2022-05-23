import 'package:flutter/material.dart';
import 'package:krishnacomingflutter/Screens/Freaturs/Registration/Registraton.dart';
import 'package:krishnacomingflutter/constant.dart';

import '../Login/Login.dart';

class LoginRegistartionSelection extends StatefulWidget {
  const LoginRegistartionSelection({Key? key}) : super(key: key);

  @override
  _LoginRegistartionSelectionState createState() => _LoginRegistartionSelectionState();
}

class _LoginRegistartionSelectionState extends State<LoginRegistartionSelection> {
  final ScrollController _firstController = ScrollController();

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
                    child: Icon(Icons.arrow_back_ios,size: 20,),
                  ),
                  Text("Back",style: TextStyle(color: Colors.black,fontSize: 16,fontFamily: 'futura'),)
                ],
              ),
              Container(
               // margin: EdgeInsets.only(top: 60,bottom: 60),
                //margin: EdgeInsets.only(top: 20,bottom: 100),
                child: const SizedBox(
                 // height: MediaQuery.of(context).size.height * 0.7,
                 // width: MediaQuery.of(context).size.width,
                  child: Image(image: AssetImage('assets/images/lady_registration.png'),fit: BoxFit.cover,),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: SingleChildScrollView(
                  child: Stack(
                    children: [
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.4,
                          width: MediaQuery.of(context).size.width,
                          child: Image(image: AssetImage('assets/images/splash_arc.png'),fit: BoxFit.cover,)),
                     Container(
                            margin: EdgeInsets.only(top: 40,),
                           // height: 200,width: 500,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Center(
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context, MaterialPageRoute(builder: (context) => RegistrationScreen()));
                                    },
                                    child:  RaisedButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => const RegistrationScreen()),
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
                                          height: 45,
                                          width: 180,
                                          //constraints: const BoxConstraints(minWidth: 10.0, minHeight: 36.0), // min sizes for Material buttons
                                          alignment: Alignment.center,
                                          child: const Text(
                                            'New Account',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(fontFamily: "Trebuchet",color: Colors.white,fontSize: 16),
                                          ),
                                        ),
                                      ),
                                    ),
                                    /*Container(
                                      height: 45,
                                      width: 180,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(25),
                                          gradient: LinearGradient(
                                              begin: Alignment.topLeft,
                                              end: Alignment.centerRight,
                                              colors: [purple,blue],
                                          tileMode: TileMode.repeated)
                                      ),
                                      child: Center(child: Text("New Account",style: TextStyle(color: Colors.white,fontSize: 16,fontFamily: 'Trebuchet'),)),
                                    ),*/
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Center(
                                  child: Container(
                                    height:50 ,
                                    margin: EdgeInsets.only(left: 10),
                                    width: MediaQuery.of(context).size.width * 0.5,
                                    //margin: EdgeInsets.only(top: 5,left: 30,right: 30,bottom: 5),
                                    child:Text("If you are using this app for the first time then register yourself by touching here.",style: TextStyle(fontSize: 13,fontFamily: "Trebuchet"),),
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Center(
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context, MaterialPageRoute(builder: (context) => RegistrationScreen()));
                                    },
                                    child:   RaisedButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => const Login()),
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
                                          height: 45,
                                          width: 180,
                                          //constraints: const BoxConstraints(minWidth: 10.0, minHeight: 36.0), // min sizes for Material buttons
                                          alignment: Alignment.center,
                                          child: const Text(
                                            'login',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(fontFamily: "Trebuchet",color: Colors.white,fontSize: 16),
                                          ),
                                        ),
                                      ),
                                    ),
                                    /*Container(
                                      height: 45,
                                      width: 180,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(25),
                                          gradient: LinearGradient(
                                              begin: Alignment.topLeft,
                                              end: Alignment.bottomRight,
                                              colors: [purple, blue])
                                      ),
                                      child: Center(child: Text("Login",style: TextStyle(color: Colors.white,fontSize: 16,fontFamily: "Trebuchet"),)),
                                    ),*/
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Center(
                                  child: Container(
                                    margin: EdgeInsets.only(left: 10),
                                    height:50 ,
                                    width: MediaQuery.of(context).size.width * 0.5,
                                    //margin: EdgeInsets.only(top: 5,left: 30,right: 30,bottom: 5),
                                    child:Text("If you already have an account, login here.",style: TextStyle(fontSize: 13,fontFamily: "Trebuchet"),),
                                  ),
                                ),

                              ],
                            )
                        ),
                    ],
                  ),
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
                    colors: [blue,purple])),
          ),
        )
    );
  }
}
