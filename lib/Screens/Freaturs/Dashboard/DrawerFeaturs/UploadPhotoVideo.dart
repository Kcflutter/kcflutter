import 'package:flutter/material.dart';
import 'package:krishnacomingflutter/Screens/Freaturs/Dashboard/bottom_nav.dart';
import 'package:krishnacomingflutter/constant.dart';

class UploadPhotoVideo extends StatefulWidget {
  const UploadPhotoVideo({Key? key}) : super(key: key);

  @override
  State<UploadPhotoVideo> createState() => _UploadPhotoVideoState();
}

class _UploadPhotoVideoState extends State<UploadPhotoVideo> {

  int position = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body:NestedScrollView(
            headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget> [
                SliverAppBar(
                  backgroundColor: Colors.white,
                  leadingWidth: 130,
                  elevation: 0,
                  leading:  Container(
                    height: 50,
                    child: Container(
                      margin: EdgeInsets.only(left: 10),
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
                  expandedHeight: 130.0,
                  pinned: true,
                  floating: true,
                  flexibleSpace: FlexibleSpaceBar(
                      background:Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/change_password_header.png",),fit: BoxFit.cover
                            )
                        ),
                        child: Container(
                          margin: EdgeInsets.only(top: 15,left: 10),
                          child: Row(
                            children: [
                              Image(image: AssetImage('assets/images/ic_menu_icon_5.PNG',),height: 25,width: 25,color: Colors.white,),
                              SizedBox(width: 10,),
                              Text('Upload: Photos/Videos',style: TextStyle(color: Colors.white,fontSize: 18,))
                            ],
                          )
                        ),
                      )
                  ),
                ),
              ];
            },
            body: Scaffold(
              body: Container(
                margin: EdgeInsets.only(left: 15,right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20,),
                    Text("  Category",style: TextStyle(color: nevigation_menu,fontFamily: 'trebuchet',fontSize: 12),),
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
                          margin: EdgeInsets.only(left: 10,right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Select Category",style: TextStyle(color: grayTextColor,fontFamily: 'Trebuchet',fontSize: 13),),
                            Icon(Icons.keyboard_arrow_down_outlined)
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 35,),
                    Container(
                      height: 30,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          border: Border.all(color:Color(0xFFC4C4C4),width: 2),
                          borderRadius: BorderRadius.circular(25)
                      ),
                      child: Flexible(
                        child: Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(left: 10),
                          child: Text("+Add Photo",style: TextStyle(color: purple,fontFamily: 'Trebuchet',fontSize: 13),),
                        ),
                      ),
                    ),
                    SizedBox(height: 3,),
                    Center(child: Text("PNG, JPG (MAX, File size 2 MB)",style: TextStyle(color: nevigation_menu,fontSize: 14,fontFamily: 'Trebuchet'),)),
                    Center(child: Text("",style: TextStyle(color: nevigation_menu,fontSize: 14,fontFamily: 'Trebuchet'),)),

                    SizedBox(height: 30,),
                    GestureDetector(
                      onTap: () {
                        // Navigator.push(context,
                        //  MaterialPageRoute(builder: (context) => CreatePassword()/*CapchaVerification()*/),
                        //);
                      },
                      child: Center(
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
                            height: 35,
                            width: 130,
                            alignment: Alignment.center,
                            child: const Text(
                              'Upload',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontFamily: "Trebuchet",color: Colors.white,fontSize: 18),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 25,),
                    GestureDetector(
                      onTap: () {
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
                      child: Container(
                        height: 30,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            border: Border.all(color:Color(0xFFC4C4C4),width: 2),
                            borderRadius: BorderRadius.circular(25)
                        ),
                        child: Flexible(
                          child: Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(left: 10),
                            child: Text("+Add Video",style: TextStyle(color: purple,fontFamily: 'Trebuchet',fontSize: 13),),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 3,),
                    Center(child: Text("MP4, MOV(MAX, File Size 15 MB)",style: TextStyle(color: nevigation_menu,fontSize: 14,fontFamily: 'Trebuchet'),)),
                    Center(child: Text("",style: TextStyle(color: nevigation_menu,fontSize: 14,fontFamily: 'Trebuchet'),)),
                    SizedBox(height: 30,),
                    GestureDetector(
                      onTap: () {
                        // Navigator.push(context,
                        //  MaterialPageRoute(builder: (context) => CreatePassword()/*CapchaVerification()*/),
                        //);
                      },
                      child: Center(
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
                            height: 35,
                            width: 130,
                            alignment: Alignment.center,
                            child: const Text(
                              'Upload',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontFamily: "Trebuchet",color: Colors.white,fontSize: 18),
                            ),
                          ),
                        ),
                      ),
                    ),

                  ],
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
