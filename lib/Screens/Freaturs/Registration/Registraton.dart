import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:krishnacomingflutter/Screens/Freaturs/Registration/RegisterLadyDetail.dart';

import '../../../Input.dart';
import '../../../constant.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  TextEditingController emailController = new TextEditingController();
  TextEditingController againMoController = new TextEditingController();
  TextEditingController mobileNoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    const MRLIST = ["Mr", "Ms", "Mrs"];
    const GENDERLIST = ["Male", "Female", "Transgender", "Unknown"];
    String _selectedGender = "MRS";
    String _selectedMr = "Mr";
    final node = FocusScope.of(context);
    String? validateMobile(String? value) {
      if (value!.length != 10)
        return 'Mobile No. must be of 10 digit';
      else
        return null;
    }
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
                      SingleChildScrollView(
                        child: Container(
                            margin: EdgeInsets.only(top: 40,),
                            child: Column(
                             mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(height: 40,),
                                 Row(
                                   mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 33,
                                    width: MediaQuery.of(context).size.width * 0.8,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: edt_bg,width: 2),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: DropdownButton<String>(
                                      isExpanded: true,
                                      value: _selectedMr,
                                      icon: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 4.0),
                                        child: const Icon(
                                          Icons.keyboard_arrow_down_rounded,
                                          size: 30,
                                          color: Colors.blueGrey,
                                        ),
                                      ),
                                      underline: Container(),
                                      onChanged: (String? newValue) {
                                        setState(() {
                                          _selectedMr = newValue!;
                                        });
                                      },
                                      items: List.generate(
                                        MRLIST.length,
                                            (index) => DropdownMenuItem(
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(  MRLIST[index],style: TextStyle(fontFamily: "Trebuchet",color: grayTextColor),),
                                          ),
                                          value: MRLIST[index],
                                        ),
                                      ),
                                    )
                                  ),
                                  SizedBox(width: 10,),
                                  Image(image: AssetImage('assets/images/ic_welcome_screen_info.PNG'),height: 25,width: 25,),
                                ],
                              ),
                                SizedBox(height: 10,),
                                Row(
                                  children: [
                                    SizedBox(width: 20,),
                                    Container(
                                      margin: EdgeInsets.only(right: 30),
                                      height: 33,
                                      width: MediaQuery.of(context).size.width * 0.8,
                                      decoration: BoxDecoration(
                                        border: Border.all(color: edt_bg,width: 2),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: DropdownButton<String>(
                                        isExpanded: true,
                                        value: _selectedMr,
                                        icon: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 4.0),
                                          child: const Icon(
                                            Icons.keyboard_arrow_down_rounded,
                                            size: 30,
                                            color: Colors.blueGrey,
                                          ),
                                        ),
                                        underline: Container(),
                                        onChanged: (String? newValue) {
                                          setState(() {
                                            _selectedMr = newValue!;
                                          });
                                        },
                                        items: List.generate(
                                          MRLIST.length,
                                              (index) => DropdownMenuItem(
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Text(  MRLIST[index],style: TextStyle(fontFamily: "Trebuchet",color: grayTextColor),),
                                            ),
                                            value: MRLIST[index],
                                          ),
                                        ),
                                      )
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      //margin: EdgeInsets.only(left: 20),
                                      height: 33,
                                      width: MediaQuery.of(context).size.width * 0.8,
                                      decoration: BoxDecoration(
                                        border: Border.all(color: edt_bg,width: 2),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Row(
                                        children: [
                                          SizedBox(width: 10,),
                                          Text("---",style: TextStyle(color: hintColor,fontSize: 13),),
                                          SizedBox(width: 10,),
                                          Container(
                                            height: 33,
                                            width: 2,
                                            color: edt_bg,
                                          ),
                                          //Text("Type Mobile No"),
                                          Flexible(
                                            child: Container(
                                              margin: EdgeInsets.only(left: 10),
                                              child: TextFormField(
                                                cursorColor: Colors.black,
                                                cursorWidth: 1,
                                                cursorHeight: 2,
                                                keyboardType: TextInputType.phone,
                                                style: TextStyle(
                                                  fontSize: 13,
                                                    fontFamily: "Trebuchet",
                                                      color: grayTextColor
                                                ),
                                                inputFormatters: [
                                                  new FilteringTextInputFormatter.allow(RegExp("[0-9]")),
                                                  new LengthLimitingTextInputFormatter(10),
                                                ],
                                                controller: mobileNoController,
                                                decoration: InputDecoration(
                                                  border: InputBorder.none,
                                                  hintText: "Type Mobile no.",
                                                  hintStyle: TextStyle(color: hintColor)
                                                  // labelText: hint,
                                                ),
                                                //passing the reference of the validation mixin, not calling directly
                                                onSaved: (String? value) {},
                                                //  onEditingComplete: () => node.nextFocus(),
                                                 validator: validateMobile,
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 10,),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 10,),
                                    Image(image: AssetImage('assets/images/ic_welcome_screen_info.PNG'),height: 25,width: 25,),
                                  ],
                                ),
                                SizedBox(height: 10,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      //margin: EdgeInsets.only(left: 20),
                                      height: 33,
                                      width: MediaQuery.of(context).size.width * 0.8,
                                      decoration: BoxDecoration(
                                        border: Border.all(color: edt_bg,width: 2),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Row(
                                        children: [
                                          SizedBox(width: 10,),
                                          Text("---",style: TextStyle(color: hintColor,fontSize: 13),),
                                          SizedBox(width: 10,),
                                          Container(
                                            height: 33,
                                            width: 2,
                                            color: edt_bg,
                                          ),
                                          //Text("Type Mobile No"),
                                          Flexible(
                                            child: Container(
                                              margin: EdgeInsets.only(left: 10),
                                              child: TextFormField(
                                                keyboardType: TextInputType.phone,
                                                style: TextStyle(
                                                  fontSize: 13,
                                                  fontFamily: "Trebuchet",
                                                    color: grayTextColor
                                                ),
                                                inputFormatters: [
                                                  new FilteringTextInputFormatter.allow(RegExp("[0-9]")),
                                                  new LengthLimitingTextInputFormatter(10),
                                                ],
                                                controller: againMoController,
                                                decoration: InputDecoration(
                                                  border: InputBorder.none,
                                                  hintText: "Again type Mobile no.",
                                                    hintStyle: TextStyle(color: hintColor)
                                                  // labelText: hint,
                                                ),
                                                //passing the reference of the validation mixin, not calling directly
                                                onSaved: (String? value) {},
                                                //  onEditingComplete: () => node.nextFocus(),
                                                // validator: validators,
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 10,),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 10,),
                                    Image(image: AssetImage('assets/images/ic_welcome_screen_info.PNG'),height: 25,width: 25,),
                                  ],
                                ),
                                SizedBox(height: 10,),
                                Row(
                                  children: [
                                    SizedBox(width: 20,),
                                    Container(
                                      //margin: EdgeInsets.only(left: 20),
                                      height: 33,
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
                                                keyboardType: TextInputType.emailAddress,
                                                style: TextStyle(
                                                  fontSize: 13,
                                                  fontFamily: "Trebuchet",
                                                    color: grayTextColor
                                                ),
                                                inputFormatters: [
                                                 // FilteringTextInputFormatter.allow(RegExp(r"[a-zA-Z0-9]+|\s")),
                                                ],
                                                controller: emailController,
                                                decoration: InputDecoration(
                                                  border: InputBorder.none,
                                                  hintText: "Type Email id",
                                                    hintStyle: TextStyle(color: hintColor)
                                                  // labelText: hint,
                                                ),
                                                //passing the reference of the validation mixin, not calling directly
                                                onSaved: (String? value) {},
                                                //  onEditingComplete: () => node.nextFocus(),
                                                 validator: (val) {
                                                   if (val!.isEmpty ||
                                                       val.trim().length == 0)
                                                     return "This field is required";
                                                   return null;
                                                 },
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),

                                  ],
                                ),
                                SizedBox(width: 10,),
                                SizedBox(height: 15,),
                                RaisedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) =>  RegisterLadyDetail()),
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
                                      height: 45,
                                      width: 150,
                                      alignment: Alignment.center,
                                      child: const Text(
                                        'Next',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(fontFamily: "Trebuchet",color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 25,),
                              ],
                            )
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
