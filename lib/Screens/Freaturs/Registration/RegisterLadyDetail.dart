import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../constant.dart';
import 'CapchaVerification.dart';

class RegisterLadyDetail extends StatefulWidget {
  const RegisterLadyDetail({Key? key}) : super(key: key);

  @override
  _RegisterLadyDetailState createState() => _RegisterLadyDetailState();
}

class _RegisterLadyDetailState extends State<RegisterLadyDetail> {
  TextEditingController ladyNameController = new TextEditingController();
  TextEditingController husbandMobileController = new TextEditingController();



  @override
  Widget build(BuildContext context) {
    const MRLIST = ["Mr", "Ms", "Mrs"];
    const GENDERLIST = ["Male", "Female", "Transgender", "Unknown"];
    String _selectedGender = "MRS";
    String _selectedMr = "Mr";
    return SafeArea(
        child: Scaffold(
          body: Stack(
            children: <Widget>[
              Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                      image:const AssetImage('assets/images/bg_green.png'),fit: BoxFit.cover,
                    )
                ),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      const SizedBox(width: 10,),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: const Icon(Icons.arrow_back_ios,size: 20,color: grayTextColor,),
                      ),
                      const Text("Back",style: const TextStyle(color: grayTextColor,fontSize: 16,fontFamily: 'Futura'),)
                    ],
                  ),
                  Container(
                    // margin: EdgeInsets.all(20),
                    child:  const Padding(
                      padding: EdgeInsets.only(top: 15.0,bottom: 20.0),
                      child: const Image(image: AssetImage('assets/images/lady_registration.png'),fit: BoxFit.cover,),
                    ),
                  ),
      ],

              ),
              Align(
                alignment: Alignment.bottomCenter,
                  child: Container(
                      height: MediaQuery.of(context).size.height * 0.44,
                      width: MediaQuery.of(context).size.width,
                      decoration:  BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/splash_arc.png'),fit: BoxFit.cover,),
                        ),
                    child: Form(
                      child: SingleChildScrollView(
                        child: Container(
                          margin: const EdgeInsets.only(top: 60),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                                   SizedBox(height: 10,),
                                  Container(
                                       height: 35,
                                       width: MediaQuery.of(context).size.width * 0.8,
                                       decoration: BoxDecoration(
                                         border: Border.all(color: edt_bg,width: 2),
                                         borderRadius: BorderRadius.circular(20),
                                       ),
                                 child: Flexible(
                                   child: Container(
                                     margin: EdgeInsets.only(left: 10),
                                     child: TextFormField(
                                       keyboardType: TextInputType.name,
                                       style: const TextStyle(
                                           fontSize: 13,
                                           fontFamily: "Trebuchet",
                                           color: grayTextColor
                                       ),
                                       inputFormatters: [
                                         new FilteringTextInputFormatter.allow(RegExp("[a-zA-Z]")),
                                       ],
                                       controller: ladyNameController,
                                       decoration: const InputDecoration(
                                           border: InputBorder.none,
                                           hintText: "Name of pregnant lady",
                                           hintStyle: const TextStyle(color: hintColor)
                                         // labelText: hint,
                                       ),
                                       //passing the reference of the validation mixin, not calling directly
                                       onSaved: (String? value) {},
                                       //  onEditingComplete: () => node.nextFocus(),
                                       // validator: validators,
                                     ),
                                   ),
                                 ),
                               ),
                                   SizedBox(height: 10,),
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
                                         const SizedBox(width: 10,),
                                         const Text("---",style: TextStyle(color: hintColor,fontSize: 13),),
                                         const SizedBox(width: 10,),
                                         Container(
                                           height: 35,
                                           width: 2,
                                           color: edt_bg,
                                         ),
                                         //Text("Type Mobile No"),
                                         Flexible(
                                           child: Container(
                                             margin: EdgeInsets.only(left: 10),
                                             child: TextFormField(
                                               keyboardType: TextInputType.phone,
                                               style: const TextStyle(
                                                   fontSize: 13,
                                                   fontFamily: "Trebuchet",
                                                   color: grayTextColor
                                               ),
                                               controller: husbandMobileController,
                                               decoration: const InputDecoration(
                                                   border: InputBorder.none,
                                                   hintText: "Husband's Mobile no.",
                                                   hintStyle: const TextStyle(color: hintColor)
                                                 // labelText: hint,
                                               ),
                                               inputFormatters: [
                                                 new FilteringTextInputFormatter.allow(RegExp("[0-9]")),
                                                 new LengthLimitingTextInputFormatter(10),
                                               ],
                                               //passing the reference of the validation mixin, not calling directly
                                               onSaved: (String? value) {},
                                               //  onEditingComplete: () => node.nextFocus(),
                                               // validator: validators,
                                             ),
                                           ),
                                         ),
                                         const SizedBox(width: 10,),
                                       ],
                                     ),
                                   ),
                                 ],
                               ),
                                   SizedBox(height: 10,),
                                  Container(
                                       height: 35,
                                       width: MediaQuery.of(context).size.width * 0.8,
                                       decoration: BoxDecoration(
                                         border: Border.all(color: edt_bg,width: 2),
                                         borderRadius: BorderRadius.circular(20),
                                       ),
                                       child:  Container(
                                         margin: const EdgeInsets.only(left: 7,right: 7),
                                         child: Row(
                                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                           children: [
                                             const Text("Are you pragnant",style: TextStyle(color: hintColor,fontSize: 13, fontFamily: "Trebuchet",),),
                                             const SizedBox(width: 35,),
                                             const Icon(Icons.keyboard_arrow_down_outlined,size: 25,color: grayTextColor,),
                                             // Image(image: AssetImage('assets/images/ic_arrow_down.PNG'),height: 5,width: 5,),
                                           ],
                                         ),
                                       )
                                   ),
                                   SizedBox(height: 10,),
                                  Container(
                                   height: 35,
                                   width: MediaQuery.of(context).size.width * 0.8,
                                   decoration: BoxDecoration(
                                     border: Border.all(color: edt_bg,width: 2),
                                     borderRadius: BorderRadius.circular(20),
                                   ),
                                   child:  Container(
                                     margin: const EdgeInsets.only(left: 7,right: 7),
                                     child: Row(
                                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                       children: [
                                         const Text("Select running pregnency month",style: TextStyle(color: hintColor,fontSize: 13, fontFamily: "Trebuchet",),),
                                         const SizedBox(width: 35,),
                                         const Icon(Icons.keyboard_arrow_down_outlined,size: 25,color: grayTextColor,),
                                         // Image(image: AssetImage('assets/images/ic_arrow_down.PNG'),height: 5,width: 5,),
                                       ],
                                     ),
                                   )
                               ),
                                   SizedBox(height: 20,),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => CapchaVerification()),
                                      );
                                    },
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
                                          'Next',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(fontFamily: "Trebuchet",color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 25,),
                                 ],
                               ),

                        ),
                      ),
                    ),
                      ),
              ),


            ],
          ),
          bottomSheet:  Container(
            height: 10,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [blue,purple])),
          ),
        )
    );
  }
}
