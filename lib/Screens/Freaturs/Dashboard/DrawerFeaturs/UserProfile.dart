import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:krishnacomingflutter/Screens/Freaturs/Dashboard/bottom_nav.dart';
import 'package:krishnacomingflutter/constant.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  TextEditingController nameController = new TextEditingController();
  TextEditingController emailController = new TextEditingController();
  TextEditingController nameGynaecologiesController = new TextEditingController();
  TextEditingController mobileGynaecologiesController = new TextEditingController();
  TextEditingController nameHusbandController = new TextEditingController();
  TextEditingController mobileHUsbandController = new TextEditingController();
  TextEditingController wpmobileController = new TextEditingController();
  TextEditingController mobileController = new TextEditingController();



int position= 0;

  @override
  Widget build(BuildContext context) {

    bool status1 = false;

    return SafeArea(
        child: Scaffold(
          body: NestedScrollView(
            headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget> [
                SliverAppBar(
                  backgroundColor: Colors.purple,
                  leadingWidth: 230,
                  elevation: 0,
                  leading:  Container(
                    height: 50,
                    child: Container(
                     // color: Colors.purple,
                      child: Row(
                        children: [
                          Icon(Icons.arrow_back_ios_outlined,size: 18,color: Colors.white,),
                          SizedBox(width: 12,),
                          Text("Back",style: TextStyle(color: Colors.white,fontSize: 16,fontFamily: 'futura'),)
                        ],
                      ),
                    ),
                  ) ,
                  expandedHeight: 230.0,
                  pinned: true,
                  floating: true,
                  flexibleSpace: FlexibleSpaceBar(
                      background:Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/profile_header_bg.png",),fit: BoxFit.cover
                          )
                        ),
                        child: Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Colors.white,width: 3
                                  ),
                                ),
                                child: Padding(
                                  padding:  EdgeInsets.all(3.0),
                                  child: Container(
                                    height: 80,
                                    width: 80,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Container(
                                        child:Image(image: AssetImage('assets/images/ic_main_page_menu_icon_1.PNG'),height: 25,width: 25,),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image(image: AssetImage('assets/images/upload_img.png'),height: 15,width: 15,),
                                  SizedBox(width: 10,),
                                  Text('Upload Your Photo',style: TextStyle(color: Colors.white,fontSize:13,fontFamily: 'futura'),)
                                ]
                              ),
                              Text('Name',style: TextStyle(fontFamily: 'futura',fontSize: 20,color: Colors.white),),
                              Text('Pregnancy Month - 2',style: TextStyle(color: Colors.white,fontSize: 16,fontFamily: 'Futura'),)
                            ],
                          ),
                        ),
                      )
                  ),
                ),
              ];
            },
            body: SafeArea(
                child: Scaffold(
                  body: Container(
                    margin: EdgeInsets.only(left: 15,right: 15),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 35,),
                          Center(child: Text('Details Of Pregnant Lady',style: TextStyle(color: grayTextColor,fontSize: 18,fontFamily: 'futura'),)),
                          SizedBox(height: 5,),
                          Container(
                            height: 5,
                            color: Color(0xFFE0E0E0),
                          ),
                          SizedBox(height: 15,),
                          Text("  Name",style: TextStyle(color: nevigation_menu,fontFamily: 'trebuchet',fontSize: 12),),
                          SizedBox(height: 3,),
                          Container(
                            height: 30,
                            decoration: BoxDecoration(
                              border: Border.all(color:Color(0xFFC4C4C4),width: 2),
                              borderRadius: BorderRadius.circular(25)
                            ),
                            child: Flexible(
                              child: Container(
                                margin: EdgeInsets.only(left: 10),
                                child: Center(
                                  child: TextFormField(
                                    keyboardType: TextInputType.name,
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontFamily: "Trebuchet",
                                        color: grayTextColor
                                    ),
                                    controller: nameController,
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Enter name",
                                        hintStyle: TextStyle(color: grayTextColor)
                                      // labelText: hint,
                                    ),
                                    inputFormatters: [
                                      new FilteringTextInputFormatter.allow(RegExp("[a-zA-z]")),
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
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width *0.45,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("  Date of Birth",style: TextStyle(color: nevigation_menu,fontFamily: 'trebuchet',fontSize: 12),),
                                    SizedBox(height: 3,),
                                    Container(
                                      height: 30,
                                      decoration: BoxDecoration(
                                          border: Border.all(color:Color(0xFFC4C4C4),width: 2),
                                          borderRadius: BorderRadius.circular(25)
                                      ),
                                      child: Flexible(
                                        child: Container(
                                          alignment: Alignment.centerLeft,
                                          width: MediaQuery.of(context).size.width *0.45,
                                          margin: EdgeInsets.only(left: 10),
                                          child: Text("Select DOB",style: TextStyle(color: grayTextColor,fontSize: 14,fontFamily: 'Trebuchet'),),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width *0.45,
                                child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("  Time of Birth",style: TextStyle(color: nevigation_menu,fontFamily: 'trebuchet',fontSize: 12),),
                                  SizedBox(height: 3,),
                                  Container(
                                    height: 30,
                                    decoration: BoxDecoration(
                                        border: Border.all(color:Color(0xFFC4C4C4),width: 2),
                                        borderRadius: BorderRadius.circular(25)
                                    ),
                                    child: Flexible(
                                      child: Container(
                                        alignment: Alignment.centerLeft,
                                        width: MediaQuery.of(context).size.width *0.45,
                                        margin: EdgeInsets.only(left: 10),
                                        child: Text("Select TOB",style: TextStyle(color: grayTextColor,fontSize: 14,fontFamily: 'Trebuchet'),),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              )
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                alignment: Alignment.topRight,
                                width: MediaQuery.of(context).size.width *0.45,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text("NOT SURE",style: TextStyle(fontFamily: 'Trebuchet',fontSize: 10),),
                                    SizedBox(width: 5,),
                                    FlutterSwitch(
                                      width: 40.0,
                                      height: 23.0,
                                      valueFontSize: 18.0,
                                      toggleSize: 15.0,
                                      value: status1,
                                      onToggle: (val) {
                                        setState(() {
                                          status1 = val;
                                        });
                                      },
                                    ),
                                    SizedBox(width: 5,),
                                    Image(image: AssetImage('assets/images/ic_welcome_screen_info.PNG'),height: 20,width: 20,),
                                  ],
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width *0.45,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text("NOT SURE",style: TextStyle(fontFamily: 'Trebuchet',fontSize: 10),),
                                    SizedBox(width: 5,),
                                    FlutterSwitch(
                                      width: 40.0,
                                      height: 23.0,
                                      valueFontSize: 18.0,
                                      toggleSize: 15.0,
                                      value: status1,
                                      onToggle: (val) {
                                        setState(() {
                                          status1 = val;
                                        });
                                      },
                                    ),
                                    SizedBox(width: 5,),
                                    Image(image: AssetImage('assets/images/ic_welcome_screen_info.PNG'),height: 20,width: 20,),
                                  ],
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 10,),
                          Container(
                            margin: EdgeInsets.only(left: 12),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text('1) Birth date & time are must to allot Ishta Mantra.',style: TextStyle(color: nevigation_menu,fontSize: 12,fontFamily: 'Trebuchet'),),
                                Container(
                                    width: 300,
                                    child: Text('2) If birth date/time is not confirmed then mention the tentative date/ time, krishna coming expert jyotishacharyaji will make necessary correction.',style: TextStyle(color: nevigation_menu,fontSize: 12,fontFamily: 'Trebuchet'))),
                              ],
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text("  Email Address",style: TextStyle(color: nevigation_menu,fontFamily: 'trebuchet',fontSize: 12),),
                          SizedBox(height: 3,),
                          Container(
                            height: 30,
                            decoration: BoxDecoration(
                                border: Border.all(color:Color(0xFFC4C4C4),width: 2),
                                borderRadius: BorderRadius.circular(25)
                            ),
                            child: Flexible(
                              child: Container(
                                margin: EdgeInsets.only(left: 10),
                                child: Center(
                                  child: TextFormField(
                                    keyboardType: TextInputType.name,
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontFamily: "Trebuchet",
                                        color: grayTextColor
                                    ),
                                    controller: emailController,
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Enter email",
                                        hintStyle: TextStyle(color: grayTextColor)
                                      // labelText: hint,
                                    ),
                                    inputFormatters: [
                                      new FilteringTextInputFormatter.allow(RegExp("[a-zA-z]")),
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
                          SizedBox(height: 10,),
                          Text("  Mobile Number",style: TextStyle(color: nevigation_menu,fontFamily: 'trebuchet',fontSize: 12),),
                          SizedBox(height: 3,),
                          Container(
                            height: 30,
                            decoration: BoxDecoration(
                                border: Border.all(color:Color(0xFFC4C4C4),width: 2),
                                borderRadius: BorderRadius.circular(25)
                            ),
                            child: Flexible(
                              child: Container(
                                margin: EdgeInsets.only(left: 10),
                                alignment: Alignment.centerLeft,
                                child: Center(
                                  child: TextFormField(
                                    keyboardType: TextInputType.name,
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontFamily: "Trebuchet",
                                        color: grayTextColor
                                    ),
                                    controller: mobileController,
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Enter Mobile no.",
                                        hintStyle: TextStyle(color: grayTextColor)
                                      // labelText: hint,
                                    ),
                                    inputFormatters: [
                                      new FilteringTextInputFormatter.allow(RegExp("[0-9]")),
                                      new LengthLimitingTextInputFormatter(10)
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
                          SizedBox(height: 10,),
                          Text("  Anniversary Date",style: TextStyle(color: nevigation_menu,fontFamily: 'trebuchet',fontSize: 12),),
                          SizedBox(height: 3,),
                          Container(
                            height: 30,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                border: Border.all(color:Color(0xFFC4C4C4),width: 2),
                                borderRadius: BorderRadius.circular(25)
                            ),
                            child: Flexible(
                              child: Container(
                                alignment: Alignment.centerLeft,
                                margin: EdgeInsets.only(left: 10),
                                child: Text("Select aniversary date",style: TextStyle(color: grayTextColor,fontFamily: 'Trebuchet',fontSize: 13),),
                              ),
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text("  Enter your whatsapp Number:",style: TextStyle(color: nevigation_menu,fontFamily: 'trebuchet',fontSize: 12),),
                          SizedBox(height: 3,),
                          Container(
                            height: 30,
                            decoration: BoxDecoration(
                                border: Border.all(color:Color(0xFFC4C4C4),width: 2),
                                borderRadius: BorderRadius.circular(25)
                            ),
                            child: Flexible(
                              child: Container(
                                margin: EdgeInsets.only(left: 10),
                                alignment: Alignment.centerLeft,
                                child: Center(
                                  child: TextFormField(
                                    keyboardType: TextInputType.name,
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontFamily: "Trebuchet",
                                        color: grayTextColor
                                    ),
                                    controller: wpmobileController,
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Whatsapp number",
                                        hintStyle: TextStyle(color: grayTextColor)
                                      // labelText: hint,
                                    ),
                                    inputFormatters: [
                                      new FilteringTextInputFormatter.allow(RegExp("[0-9]")),
                                      new LengthLimitingTextInputFormatter(10)
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


                          SizedBox(height: 10,),
                          Text("  City",style: TextStyle(color: nevigation_menu,fontFamily: 'trebuchet',fontSize: 12),),
                          SizedBox(height: 3,),
                          Container(
                            height: 30,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                border: Border.all(color:Color(0xFFC4C4C4),width: 2),
                                borderRadius: BorderRadius.circular(25)
                            ),
                            child: Flexible(
                              child: Container(
                                alignment: Alignment.centerLeft,
                                margin: EdgeInsets.only(left: 10),
                                child: Text("Select city",style: TextStyle(color: grayTextColor,fontFamily: 'Trebuchet',fontSize: 13),),
                              ),
                            ),
                          ),
                          SizedBox(height: 20,),

                          Center(child: Text("Your Gynacologist's (Doctor's) Detail",style: TextStyle(color: grayTextColor,fontSize: 18,fontFamily: 'futura'),)),
                          SizedBox(height: 5,),
                          Container(
                            height: 5,
                            color: Color(0xFFE0E0E0),
                          ),
                          SizedBox(height: 15,),
                          Text("  Name",style: TextStyle(color: nevigation_menu,fontFamily: 'trebuchet',fontSize: 12),),
                          SizedBox(height: 3,),
                          Container(
                            height: 30,
                            decoration: BoxDecoration(
                                border: Border.all(color:Color(0xFFC4C4C4),width: 2),
                                borderRadius: BorderRadius.circular(25)
                            ),
                            child: Flexible(
                              child: Container(
                                margin: EdgeInsets.only(left: 10),
                                child: Center(
                                  child: TextFormField(
                                    keyboardType: TextInputType.name,
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontFamily: "Trebuchet",
                                        color: grayTextColor
                                    ),
                                    controller: nameGynaecologiesController,
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Name of your esteemed Gynaecologist",
                                        hintStyle: TextStyle(color: grayTextColor)
                                      // labelText: hint,
                                    ),
                                    inputFormatters: [
                                      new FilteringTextInputFormatter.allow(RegExp("[a-zA-z]")),
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
                          SizedBox(height: 10,),
                          Text("  Contact Number",style: TextStyle(color: nevigation_menu,fontFamily: 'trebuchet',fontSize: 12),),
                          SizedBox(height: 3,),
                          Container(
                            height: 30,
                            decoration: BoxDecoration(
                                border: Border.all(color:Color(0xFFC4C4C4),width: 2),
                                borderRadius: BorderRadius.circular(25)
                            ),
                            child: Flexible(
                              child: Container(
                                margin: EdgeInsets.only(left: 10),
                                alignment: Alignment.centerLeft,
                                child: Center(
                                  child: TextFormField(
                                    keyboardType: TextInputType.name,
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontFamily: "Trebuchet",
                                        color: grayTextColor
                                    ),
                                    controller: mobileGynaecologiesController,
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Enter Contact number",
                                        hintStyle: TextStyle(color: grayTextColor)
                                      // labelText: hint,
                                    ),
                                    inputFormatters: [
                                      new FilteringTextInputFormatter.allow(RegExp("[0-9]")),
                                      new LengthLimitingTextInputFormatter(10)
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
                          SizedBox(height: 20,),

                          Center(child: Text("Detail's of HUsband",style: TextStyle(color: grayTextColor,fontSize: 18,fontFamily: 'futura'),)),
                          SizedBox(height: 5,),
                          Container(
                            height: 5,
                            color: Color(0xFFE0E0E0),
                          ),
                          SizedBox(height: 15,),
                          Text("  Name",style: TextStyle(color: nevigation_menu,fontFamily: 'trebuchet',fontSize: 12),),
                          SizedBox(height: 3,),
                          Container(
                            height: 30,
                            decoration: BoxDecoration(
                                border: Border.all(color:Color(0xFFC4C4C4),width: 2),
                                borderRadius: BorderRadius.circular(25)
                            ),
                            child: Flexible(
                              child: Container(
                                alignment: Alignment.centerLeft,
                                margin: EdgeInsets.only(left: 10),
                                child: Center(
                                  child: TextFormField(
                                    keyboardType: TextInputType.name,
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontFamily: "Trebuchet",
                                        color: grayTextColor
                                    ),
                                    controller: nameHusbandController,
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Enter Husband Name",
                                        hintStyle: TextStyle(color: grayTextColor)
                                      // labelText: hint,
                                    ),
                                    inputFormatters: [
                                      new FilteringTextInputFormatter.allow(RegExp("[a-zA-z]")),
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
                          SizedBox(height: 10,),
                          Text("  Mobile Number",style: TextStyle(color: nevigation_menu,fontFamily: 'trebuchet',fontSize: 12),),
                          SizedBox(height: 3,),
                          Container(
                            height: 30,
                            decoration: BoxDecoration(
                                border: Border.all(color:Color(0xFFC4C4C4),width: 2),
                                borderRadius: BorderRadius.circular(25)
                            ),
                            child: Flexible(
                              child: Container(
                                margin: EdgeInsets.only(left: 10),
                                alignment: Alignment.centerLeft,
                                child: Center(
                                  child: TextFormField(
                                    keyboardType: TextInputType.name,
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontFamily: "Trebuchet",
                                        color: grayTextColor
                                    ),
                                    controller: mobileHUsbandController,
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Type Husband Mobile no.",
                                        hintStyle: TextStyle(color: grayTextColor)
                                      // labelText: hint,
                                    ),
                                    inputFormatters: [
                                      new FilteringTextInputFormatter.allow(RegExp("[0-9]")),
                                      new LengthLimitingTextInputFormatter(10)
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
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width *0.45,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("  Date of Birth",style: TextStyle(color: nevigation_menu,fontFamily: 'trebuchet',fontSize: 12),),
                                    SizedBox(height: 3,),
                                    Container(
                                      height: 30,
                                      decoration: BoxDecoration(
                                          border: Border.all(color:Color(0xFFC4C4C4),width: 2),
                                          borderRadius: BorderRadius.circular(25)
                                      ),
                                      child: Flexible(
                                        child: Container(
                                          alignment: Alignment.centerLeft,
                                          width: MediaQuery.of(context).size.width *0.45,
                                          margin: EdgeInsets.only(left: 10),
                                          child: Text("Select DOB",style: TextStyle(color: grayTextColor,fontSize: 14,fontFamily: 'Trebuchet'),),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width *0.45,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("  Time of Birth",style: TextStyle(color: nevigation_menu,fontFamily: 'trebuchet',fontSize: 12),),
                                    SizedBox(height: 3,),
                                    Container(
                                      height: 30,
                                      decoration: BoxDecoration(
                                          border: Border.all(color:Color(0xFFC4C4C4),width: 2),
                                          borderRadius: BorderRadius.circular(25)
                                      ),
                                      child: Flexible(
                                        child: Container(
                                          alignment: Alignment.centerLeft,
                                          width: MediaQuery.of(context).size.width *0.45,
                                          margin: EdgeInsets.only(left: 10),
                                          child: Text("Select TOB",style: TextStyle(color: grayTextColor,fontSize: 14,fontFamily: 'Trebuchet'),),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                alignment: Alignment.topRight,
                                width: MediaQuery.of(context).size.width *0.45,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text("NOT SURE",style: TextStyle(fontFamily: 'Trebuchet',fontSize: 10),),
                                    SizedBox(width: 5,),
                                    FlutterSwitch(
                                      width: 40.0,
                                      height: 23.0,
                                      valueFontSize: 18.0,
                                      toggleSize: 15.0,
                                      value: status1,
                                      onToggle: (val) {
                                        setState(() {
                                          status1 = val;
                                        });
                                      },
                                    ),
                                    SizedBox(width: 5,),
                                    Image(image: AssetImage('assets/images/ic_welcome_screen_info.PNG'),height: 20,width: 20,),
                                  ],
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width *0.45,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text("NOT SURE",style: TextStyle(fontFamily: 'Trebuchet',fontSize: 10),),
                                    SizedBox(width: 5,),
                                    FlutterSwitch(
                                      width: 40.0,
                                      height: 23.0,
                                      valueFontSize: 18.0,
                                      toggleSize: 15.0,
                                      value: status1,
                                      onToggle: (val) {
                                        setState(() {
                                          status1 = val;
                                        });
                                      },
                                    ),
                                    SizedBox(width: 5,),
                                    Image(image: AssetImage('assets/images/ic_welcome_screen_info.PNG'),height: 20,width: 20,),
                                  ],
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 10,),
                          Container(
                            margin: EdgeInsets.only(left: 12),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text('1) Birth date & time are must to allot Ishta Mantra.',style: TextStyle(color: nevigation_menu,fontSize: 12,fontFamily: 'Trebuchet'),),
                                Container(
                                    width: 300,
                                    child: Text('2) If birth date/time is not confirmed then mention the tentative date/ time, krishna coming expert jyotishacharyaji will make necessary correction.',style: TextStyle(color: nevigation_menu,fontSize: 12,fontFamily: 'Trebuchet'))),
                              ],
                            ),
                          ),
                          SizedBox(height: 30,),
                          GestureDetector(
                            onTap: () {
                             // Navigator.push(context,
                              //  MaterialPageRoute(builder: (context) => CreatePassword()/*CapchaVerification()*/),
                              //);
                            },
                            child: Center(
                              child: Container(
                                height: 35,
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
                                  height: 35,
                                  width: 130,
                                  alignment: Alignment.center,
                                  child: const Text(
                                    'Save',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontFamily: "Trebuchet",color: Colors.white,fontSize: 18),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 20,),


                        ],
                      ),
                    ),
                  ),
                  bottomNavigationBar: Container(
                    height: MediaQuery.of(context).size.height * 0.12,
                    width: MediaQuery.of(context).size.width,
                    child: BottomNavigation(
                      onNavChange: (int newPos) {
                        updatePos(newPos);
                      },
                    ),
                  ),
                ),
            ),
          ),
        ));
  }
  void updatePos(int pos) {
    setState(() {
      position = pos;
      // if (pos == 0) {
      //   title = "Index";
      // } else if (pos == 1) {
      //   title = "Search";
      // } else if (pos == 2) {
      //   title = "Chat";
      // } else if (pos == 3) {
      //   title = "All Categories";
      // } else if (pos == 4) {
      //   title = "My Cart";
      // }
    });
  }
}
