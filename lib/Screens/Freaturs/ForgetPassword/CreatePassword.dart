import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:krishnacomingflutter/Screens/Freaturs/Registration/CapchaVerification.dart';
import 'package:krishnacomingflutter/constant.dart';

class CreatePassword extends StatefulWidget {
  const CreatePassword({Key? key}) : super(key: key);

  @override
  _CreatePasswordState createState() => _CreatePasswordState();
}

class _CreatePasswordState extends State<CreatePassword> {

  TextEditingController newPasswordController = new TextEditingController();
  TextEditingController confirmPasswordController = new TextEditingController();


  @override
  Widget build(BuildContext context) {
    var _formKey = GlobalKey<FormState>();

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
                // margin: EdgeInsets.all(20),
                child:  Padding(
                  padding: const EdgeInsets.only(top: 15.0,bottom: 20.0),
                  child: Image(image: AssetImage('assets/images/lady_registration.png'),fit: BoxFit.cover,),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.48,
                  child: Stack(
                    children: [
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.48,
                          width: MediaQuery.of(context).size.width,
                          child: Image(image: AssetImage('assets/images/splash_arc.png'),fit: BoxFit.cover,)),
                      Form(
                        
                        child: SingleChildScrollView(
                          child: Container(
                              margin: EdgeInsets.only(top: 40,),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(height: 30,),
                                  Text("Create Password",style: TextStyle(color: grayTextColor,fontFamily: 'Trebuchet',fontSize: 13),),
                                  SizedBox(height: 15,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        //margin: EdgeInsets.only(left: 20),
                                        height: 35,
                                        width: MediaQuery.of(context).size.width * 0.8,
                                        decoration: BoxDecoration(
                                          border: Border.all(color: edt_bg,width: 2),
                                          borderRadius: BorderRadius.circular(20),
                                        ),
                                        child: Row(
                                          children: [
                                            SizedBox(width: 10,),
                                            Flexible(
                                              child: Container(
                                                margin: EdgeInsets.only(left: 10),
                                                child: TextFormField(
                                                  keyboardType: TextInputType.number,
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      fontFamily: "Trebuchet",
                                                      color: grayTextColor
                                                  ),
                                                  controller: newPasswordController,
                                                  decoration: InputDecoration(
                                                      border: InputBorder.none,
                                                      hintText: "Create New Password",
                                                      hintStyle: TextStyle(color: hintColor)
                                                    // labelText: hint,
                                                  ),
                                                  inputFormatters: [
                                                    new FilteringTextInputFormatter.allow(RegExp("[0-9]")),
                                                    new LengthLimitingTextInputFormatter(4),
                                                  ],
                                                  //passing the reference of the validation mixin, not calling directly
                                                  onSaved: (String? value) {},
                                                  //  onEditingComplete: () => node.nextFocus(),
                                                  // validator: validators,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10,),
                                  Container(
                                    //margin: EdgeInsets.only(left: 20),
                                    height: 35,
                                    width: MediaQuery.of(context).size.width * 0.8,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: edt_bg,width: 2),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Row(
                                      children: [
                                        SizedBox(width: 10,),
                                        Flexible(
                                          child: Container(
                                            margin: EdgeInsets.only(left: 10),
                                            child: TextFormField(
                                              keyboardType: TextInputType.number,
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  fontFamily: "Trebuchet",
                                                  color: grayTextColor
                                              ),
                                              controller: confirmPasswordController,
                                              decoration: InputDecoration(
                                                  border: InputBorder.none,
                                                  hintText: "Confirm Password",
                                                  hintStyle: TextStyle(color: hintColor)
                                                // labelText: hint,
                                              ),
                                              inputFormatters: [
                                                new FilteringTextInputFormatter.allow(RegExp("[0-9]")),
                                                new LengthLimitingTextInputFormatter(4),
                                              ],
                                              //passing the reference of the validation mixin, not calling directly
                                              onSaved: (String? value) {},
                                              //  onEditingComplete: () => node.nextFocus(),
                                              // validator: validators,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 22,),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(context,
                                        MaterialPageRoute(builder: (context) => CapchaVerification()),
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
                                  SizedBox(height: 45,),
                                ],
                              )
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )

            ],
          ) ,
          bottomSheet:  Container(
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
