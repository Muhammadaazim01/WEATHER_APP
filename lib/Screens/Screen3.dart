import 'package:bottom_bar/bottom_bar.dart';
import 'package:flutter/material.dart';

class Screen3 extends StatefulWidget {
  const Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  int _currentPage = 0;
  final _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            child: Stack(
          children: [
            Image.asset(
              "assets/images/Weather_1 (1).png",
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Column(
              children: [
                Padding(padding: EdgeInsets.only(top: 30)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 45,
                      width: 335,
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Text(
                            "10-DAY  FORECAST",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 192,
                  width: 335,
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Text(
                            "AIR QUALITY",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Text(
                            "56 - Moderate",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 23,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Text(
                            "Air quality is 56, which is the same as\n yesterday at about this time.",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                            ),
                            maxLines: 2,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 4,
                        width: 305,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.red,
                              Colors.orange,
                              Colors.yellow,
                              Colors.green,
                              Colors.blue,
                              Colors.indigo,
                              Colors.purple,
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 1,
                        width: 310,
                        color: Colors.white.withOpacity(0.5),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Text(
                            "See More",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                            ),
                          ),
                          Row(
                            children: [
                              Padding(padding: EdgeInsets.only(left: 215)),
                              Icon(
                                Icons.arrow_forward_outlined,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 280,
                  width: 335,
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Text(
                            "TEMPERATURE",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Image.asset(
                        "assets/images/Mask Group.png",
                        height: 195,
                        width: 303,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 15)),
                          Text(
                            "See More",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                            ),
                          ),
                          Row(
                            children: [
                              Padding(padding: EdgeInsets.only(left: 215)),
                              Icon(
                                Icons.arrow_forward_outlined,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 190,
                  width: 325,
                  color: Colors.black,
                )
              ],
            ),
          ],
        )),
      ),
      bottomNavigationBar: BottomBar(
        backgroundColor: Color(0xff2A3040),
        selectedIndex: _currentPage,
        onTap: (int index) {
          _pageController.jumpToPage(index);
          setState(() => _currentPage = index);
        },
        items: <BottomBarItem>[
          BottomBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
            activeColor: Colors.blue,
          ),
          BottomBarItem(
            icon: Icon(Icons.favorite),
            title: Text('Favorites'),
            activeColor: Colors.red,
          ),
          BottomBarItem(
            icon: Icon(Icons.person),
            title: Text('Account'),
            activeColor: Colors.greenAccent.shade700,
          ),
          BottomBarItem(
            icon: Icon(Icons.settings),
            title: Text('Settings'),
            activeColor: Colors.orange,
          ),
        ],
      ),
    );
  }
}
