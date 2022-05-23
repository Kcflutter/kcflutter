import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:krishnacomingflutter/Screens/Freaturs/Dashboard/DrawerFeaturs/UploadPhotoVideo.dart';
import 'package:krishnacomingflutter/Screens/Freaturs/Dashboard/DrawerFeaturs/UserProfile.dart';
import 'package:krishnacomingflutter/Screens/Freaturs/Dashboard/bottom_nav.dart';
import 'package:krishnacomingflutter/constant.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int position = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            title: Column(
              children: [
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Scaffold.of(context).openDrawer();
                      },
                      child: Container(
                          height: 50,
                          child:Icon(Icons.menu,size: 35,color: grayTextColor,)
                      ),
                    ),
                    Text('Krishna Coming',style: TextStyle(color: Color(0xFF6D6E70),fontSize: 29,fontFamily: 'Freeland'),),
                    Icon(Icons.notifications_rounded,size: 30,color: grayTextColor,),
                  ],
                ),
              ],
            ),
            automaticallyImplyLeading: false,
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 200,
                  child: Stack(
                    children: [
                    Center(
                      child: Container(
                        height: 30,
                        color: Color(0xFFbca171),
                      ),
                    ),
                    Center(
                      child:Image(image: AssetImage('assets/images/mother_top.png'),height: 140,width: MediaQuery.of(context).size.width * 0.8,),
                    ),
                      Positioned(
                          bottom: 52,
                          child: Align(
                            alignment: Alignment.centerLeft,
                              child: Image(image: AssetImage('assets/images/diya_normal.png'),height: 50,width: 50,))
                      ),
                     Positioned(
                         right: 0,
                         bottom: 52,
                         child: Align(
                           alignment: Alignment.centerRight,
                             child: Image(image: AssetImage('assets/images/diya_normal.png'),height: 50,width: 50,))
                     )

                    ],
                  ),
                ),
                SizedBox(height: 10,),
                /*Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/ic_home_maa_text.PNG'),)
                    )
                  ),*/
                  Container(
                    height: 120,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 5,
                          blurRadius: 2,
                          offset: Offset(0, 1), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20),),
                          child: Container(
                            height: 100,
                              width: 155,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image:  AssetImage('assets/images/exp_kc_user_home.png',),fit: BoxFit.cover,)
                                ),
                              ),
                        ),
                    Center(
                      child: Align(
                        alignment: Alignment.center,
                        child: Container(
                          margin: EdgeInsets.only(top: 20,right: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Experience',style: TextStyle(color: grayTextColor,fontFamily: 'Futura',fontSize: 16,fontWeight: FontWeight.bold),),
                              Text('Of Krishna Coming',style: TextStyle(color: grayTextColor,fontFamily: 'Futura',fontSize: 16),),
                              Text('User..',style: TextStyle(color: grayTextColor,fontFamily: 'Futura',fontSize: 16),),
                              Container(
                                height: 4,
                                width: 50,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      colors: [purple,blue]
                                  )
                                ),
                              ),
                              SizedBox(height: 5,),
                              Text('Tap here to see....',style: TextStyle(color: grayTextColor ,fontSize: 9,fontFamily: 'Trebuchet'),)
                            ],
                          ),
                        ),
                      ),
                    )
                      ],
                    ),
                  ),
                  SizedBox(height: 30,),
                  Container(
                  height: 90,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage('assets/images/download_bg.png'),fit: BoxFit.cover
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 5,
                        blurRadius: 2,
                        offset: Offset(0, 1), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image(image: AssetImage('assets/images/download_icon.png'),height: 50,width: 70,),
                      Center(
                        child: Align(
                          alignment: Alignment.center,
                          child: Container(
                            margin: EdgeInsets.only(top: 20,right: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Downloads',style: TextStyle(color: grayTextColor,fontFamily: 'Futura',fontSize: 16,),),
                                SizedBox(height: 5,),
                                Text('Section',style: TextStyle(color: grayTextColor,fontFamily: 'Futura',fontSize: 16),),
                                SizedBox(height: 5,),
                                Text('Tap here to see....',style: TextStyle(color: grayTextColor ,fontSize: 9,fontFamily: 'Trebuchet'),)
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                  SizedBox(height: 20,),
                  Container(
                    height: 155,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/new_team_bg.png')
                      )
                    ),
                    child: Container(
                      margin: EdgeInsets.only(right: 6),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    alignment: Alignment.topRight,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Krishna Coming',style: TextStyle(color: grayTextColor,fontFamily: 'Futura',fontSize: 16,fontWeight: FontWeight.bold),),
                                        SizedBox(height: 5,),
                                        Text('Garbh Sanskar Team',style: TextStyle(color: grayTextColor,fontFamily: 'Futura',fontSize: 16,fontWeight: FontWeight.bold),),

                                      ],
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: Container(
                                      margin: EdgeInsets.only(right: 50),
                                      height: 4,
                                      width:40,
                                      decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                              colors: [purple,blue]
                                          )
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 5,),
                                  Container(
                                    alignment: Alignment.centerRight,
                                    margin: EdgeInsets.only(right: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 5,),
                                        Text('A Venture of IITians,',style: TextStyle(color: grayTextColor,fontFamily: 'Trebuchet',fontSize: 12,),),
                                        SizedBox(height: 2,),
                                        Container(
                                          width: 78,
                                          child: Column(
                                            children: [
                                              Text('Gynecologists, Scientits & Vedpaathi Brahamins',style: TextStyle(color: grayTextColor,fontFamily: 'Trebuchet',fontSize: 12,),),
                                              //Text('Scientits',style: TextStyle(color: grayTextColor,fontFamily: 'Trebuchet',fontSize: 12,),),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
              ],
            ),
          ),
          drawer: ClipRRect(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20), bottomRight: Radius.circular(20)),
            child:   Drawer(
              child: Column(
                children: [
                  Container(
                    height: 220,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image:AssetImage('assets/images/header_blue_top.png'),fit: BoxFit.cover,
                        )
                    ),
                    child: DrawerHeader(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image:AssetImage('assets/images/header_blue_top.png'),fit: BoxFit.cover,
                          )
                      ),
                      child: Column(
                        //mainAxisAlignment: MainAxisAlignment.center,
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
                          Text('Name',style: TextStyle(fontFamily: 'futura',fontSize: 22,color: Colors.white),),
                          Text('Pregnancy Month - 2',style: TextStyle(color: Colors.white,fontSize: 16,fontFamily: 'Futura'),)
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height *0.55,
                    child: SingleChildScrollView(
                      physics: ScrollPhysics(),
                      child: Column(
                        children: [
                          ListTile(
                            leading: Image(image: AssetImage('assets/images/ic_main_page_menu_icon_1.PNG'),height: 25,width: 25,),
                            title:  Text('Your Profile',style: TextStyle(color: nevigation_menu,fontSize: 14 ,fontFamily: 'Futura'),),
                            trailing: Icon(Icons.arrow_forward_ios_rounded,size: 15,),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => UserProfile()),
                              );
                            },
                          ),
                          ListTile(
                            leading: Image(image: AssetImage('assets/images/ic_menu_icon_2.PNG'),height: 25,width: 25,),
                            title:  Text('Language',style: TextStyle(color: nevigation_menu,fontSize: 14 ,fontFamily: 'Futura'),),
                            trailing: Icon(Icons.arrow_forward_ios_rounded,size: 15,),
                            onTap: () {
                              Navigator.pop(context);
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context){
                                    return Dialog(
                                      child: Container(
                                        height: 150,
                                        child: Stack(
                                          children:<Widget> [
                                            SizedBox(height: 10,),
                                            Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(20),
                                                  gradient: LinearGradient(
                                                      colors: [purple,blue]
                                                  )
                                              ),
                                              child: Container(
                                                margin: EdgeInsets.only(top: 20),
                                                child: Column(
                                                    children: [
                                                      Text('Select Language',style: TextStyle(color: Colors.white,fontSize: 16 ),),
                                                      SizedBox(height: 5,),
                                                      Container(
                                                        margin: EdgeInsets.only(left: 10,right: 10),
                                                        height: 100,
                                                        decoration: BoxDecoration(
                                                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15)),
                                                          color: Colors.white,
                                                        ),
                                                        child:  Row(
                                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                          children: [
                                                            GestureDetector(
                                                              onTap: () {
                                                                // Navigator.push(context,
                                                                //  MaterialPageRoute(builder: (context) => CapchaVerification()),
                                                                //);
                                                              },
                                                              child: Container(
                                                                height: 35,
                                                                width: 85,
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
                                                                  width: 85,
                                                                  alignment: Alignment.center,
                                                                  child: const Text(
                                                                    'हिंदी',
                                                                    textAlign: TextAlign.center,
                                                                    style: TextStyle(fontFamily: "Trebuchet",color: Colors.white),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            GestureDetector(
                                                              onTap: () {
                                                                // Navigator.push(context,
                                                                //   MaterialPageRoute(builder: (context) => CapchaVerification()),
                                                                // );
                                                              },
                                                              child: Container(
                                                                height: 35,
                                                                width: 85,
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
                                                                  width: 85,
                                                                  alignment: Alignment.center,
                                                                  child: const Text(
                                                                    'English',
                                                                    textAlign: TextAlign.center,
                                                                    style: TextStyle(fontFamily: "Trebuchet",color: Colors.white),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      )
                                                    ],
                                                ),
                                              ),
                                            ),

                                          ],
                                        ),
                                      ),
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                    );
                                  }
                              );
                            },
                          ),
                          ListTile(
                            leading: Image(image: AssetImage('assets/images/ic_menu_icon_3.PNG'),height: 25,width: 25,),
                            title:  Text('Change Password',style: TextStyle(color: nevigation_menu,fontSize: 14 ,fontFamily: 'Futura'),),
                            trailing: Icon(Icons.arrow_forward_ios_rounded,size: 15,),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            leading: Image(image: AssetImage('assets/images/ic_menu_icon_4.PNG'),height: 25,width: 25,),
                            title:  Text('Notification',style: TextStyle(color: nevigation_menu,fontSize: 14 ,fontFamily: 'Futura'),),
                            trailing: Icon(Icons.arrow_forward_ios_rounded,size: 15,),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            leading: Image(image: AssetImage('assets/images/ic_menu_icon_5.PNG'),height: 25,width: 25,),
                            title:  Text('Upload: Photos/Videos',style: TextStyle(color: nevigation_menu,fontSize: 14 ,fontFamily: 'Futura'),),
                            trailing: Icon(Icons.arrow_forward_ios_rounded,size: 15,),
                            onTap: () {

                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => UploadPhotoVideo()),
                              );
                            },
                          ),
                          ListTile(
                            leading: Image(image: AssetImage('assets/images/ic_menu_icon_6.PNG'),height: 25,width: 25,),
                            title:  Text('Subscription Receipt', style: TextStyle(color: nevigation_menu,fontSize: 14 ,fontFamily: 'Futura'),),
                            trailing: Icon(Icons.arrow_forward_ios_rounded,size: 15,),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            leading: Image(image: AssetImage('assets/images/ic_menu_icon_7.PNG'),height: 25,width: 25,),
                            title:  Text('Subscription Support',style: TextStyle(color: nevigation_menu,fontSize: 14 ,fontFamily: 'Futura'),),
                            trailing: Icon(Icons.arrow_forward_ios_rounded,size: 15,),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            leading: Image(image: AssetImage('assets/images/ic_menu_icon_8.PNG'),height: 25,width: 25,),
                            title:  Text('Contact Us', style: TextStyle(color: nevigation_menu,fontSize: 14 ,fontFamily: 'Futura'),),
                            trailing: Icon(Icons.arrow_forward_ios_rounded,size: 15,),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            leading: Image(image: AssetImage('assets/images/ic_menu_icon_9.PNG'),height: 25,width: 25,),
                            title:  Text('Share your Complaint/feedback',style: TextStyle(color: nevigation_menu,fontSize: 14 ,fontFamily: 'Futura'),),
                            trailing: Icon(Icons.arrow_forward_ios_rounded,size: 15,),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            leading: Image(image: AssetImage('assets/images/ic_menu_icon_10.PNG'),height: 25,width: 25,),
                            title:  Text('About Us',style: TextStyle(color: nevigation_menu,fontSize: 14 ,fontFamily: 'Futura'),),
                            trailing: Icon(Icons.arrow_forward_ios_rounded,size: 15,),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            leading: Image(image: AssetImage('assets/images/ic_menu_icon_11.PNG'),height: 25,width: 25,),
                            title:  Text('Share the App', style: TextStyle(color: nevigation_menu,fontSize: 14 ,fontFamily: 'Futura'),),
                            trailing: Icon(Icons.arrow_forward_ios_rounded,size: 15,),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            leading: Image(image: AssetImage('assets/images/ic_feedback_rating.PNG'),height: 25,width: 25,),
                            title:  Text('Rate Us', style: TextStyle(color: nevigation_menu,fontSize: 14 ,fontFamily: 'Futura'),),
                            trailing: Icon(Icons.arrow_forward_ios_rounded,size: 15,),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Dashboard()),
                          );
                        },
                        child: Container(
                          height: 35,
                          width: 120,
                          decoration:   BoxDecoration(
                            border: Border.all(color: Colors.grey,width: 1,),
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: <Color>[purple, blue],),
                            borderRadius: const BorderRadius.all(Radius.circular(80.0)),
                          ),
                          child: Container(
                            height: 30,
                            width: 40,
                            alignment: Alignment.center,
                            child: const Text(
                              'LOG OUT',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontFamily: "Trebuchet",color: Colors.white,fontSize: 18),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                ],
              )


            ) ,
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
    );
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
