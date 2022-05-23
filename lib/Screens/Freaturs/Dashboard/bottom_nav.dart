import 'package:flutter/material.dart';
import 'package:krishnacomingflutter/constant.dart';

typedef void IntCallback(int val);


class BottomNavigation extends StatefulWidget {
  IntCallback onNavChange;

  BottomNavigation({required this.onNavChange});

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int currentIndex = 0;

  setBottomBarIndex(index) {
    widget.onNavChange(index);
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: size.width,
            decoration: BoxDecoration(
              //color: Colors.white,
                  image: DecorationImage(
                      image: AssetImage('assets/images/bottom_arc_pn.png')
                  ),
            ),
          ),
          Positioned(
            bottom: 10,
            child: Container(
              width: size.width,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 20,
                            width: 20,
                            child: Image(
                              color: grayTextColor,
                              image: AssetImage('assets/images/ic_live_bottom.PNG'),
                            ),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            'Live',
                            style: TextStyle(
                              color:  grayTextColor,
                              fontSize: 11,
                              fontFamily: 'Futura',
                            ),
                          )
                        ],
                      ),
                      onTap: () {
                        setBottomBarIndex(0);
                      },
                    ),
                    GestureDetector(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 20,
                            width: 20,
                            child: Image(
                              color: grayTextColor,
                              image: AssetImage('assets/images/ic_course_bottom.PNG'),
                            ),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            'Price',
                            style: TextStyle(
                              color:grayTextColor,
                              fontSize: 11,
                              fontFamily: 'Futura',
                            ),
                          )
                        ],
                      ),
                      onTap: () {
                        setBottomBarIndex(1);
                      },
                    ),
                    GestureDetector(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 20,
                            width: 20,
                            child:
                            Image(
                              color: grayTextColor,
                              image: AssetImage('assets/images/ic_website.PNG'),
                            ),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            'Website',
                            style: TextStyle(
                              color:  grayTextColor,
                              fontSize: 11,
                              fontFamily: 'Futura',
                            ),
                          )
                        ],
                      ),
                      onTap: () {
                        setBottomBarIndex(2);
                      },
                    ),
                    GestureDetector(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 20,
                            width: 20,
                            child: Image(
                              color:  grayTextColor,
                              image: AssetImage('assets/images/ic_daily_activity.PNG'),
                            ),

                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            'Activities',
                            style: TextStyle(
                              color:  grayTextColor,
                              fontSize: 11,
                              fontFamily: 'Futura',
                            ),
                          )
                        ],
                      ),
                      onTap: () {
                        setBottomBarIndex(3);
                      },
                    ),
                    GestureDetector(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                              height: 20,
                              width: 20,
                              child: Image(
                                color:  grayTextColor,
                                image: AssetImage('assets/images/ic_youtube_new.PNG'),
                              ),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            'youtube',
                            style: TextStyle(
                              color:  grayTextColor,
                              fontSize: 11,
                              fontFamily: 'Futura',
                            ),
                          )
                        ],
                      ),
                      onTap: () {
                        setBottomBarIndex(4);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
