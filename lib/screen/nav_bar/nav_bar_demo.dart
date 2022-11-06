import 'package:day_23/screen/nav_bar/calender.dart';
import 'package:day_23/screen/nav_bar/my_task.dart';
import 'package:day_23/screen/nav_bar/profile.dart';
import 'package:day_23/screen/nav_bar/project.dart';
import 'package:day_23/widget/const.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PageViewDemo extends StatefulWidget {
  static const String id = "PageViewDemo";

  @override
  _PageViewDemoState createState() => _PageViewDemoState();
}

class _PageViewDemoState extends State<PageViewDemo> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  PageController pageController = PageController(initialPage: 0);
  List<Widget> pages = [MyTask(), Calender(), Project(), Profile()];

  void onPageChange(int index) {
    setState(() {
      selectedItem = index;
    });
  }

  int selectedItem = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      floatingActionButton: FloatingActionButton(
        isExtended: true,
        backgroundColor: Colors.blue,
        child: Icon(
          Icons.add,
          size: 30,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: PageView(
        controller: pageController,
        children: pages,
        onPageChanged: onPageChange,
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color(0xff292B3E),
        child: Padding(
          padding: EdgeInsets.only(bottom: 8, top: 8),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MaterialButton(
                onPressed: () {
                  setState(() {
                    selectedItem = 0;
                    pageController!.jumpToPage(0);
                  });
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset(
                      "asset/my_task.svg",
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      "My Task",
                      style: Style(14, Colors.white),
                    )
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {
                  setState(() {
                    selectedItem = 1;
                    pageController!.jumpToPage(1);
                  });
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.photo,
                      color: Colors.white70,
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      "Calender",
                      style: Style(14, Colors.white),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 30,
              ),
              MaterialButton(
                onPressed: () {
                  setState(() {
                    selectedItem = 2;
                    pageController!.jumpToPage(2);
                  });
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.app_blocking_outlined,
                      color: Colors.white70,
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      "Project",
                      style: Style(14, Colors.white),
                    )
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {
                  setState(() {
                    selectedItem = 3;
                    pageController!.jumpToPage(3);
                  });
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.menu,
                      color: Colors.white70,
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      "Profile",
                      style: Style(14, Colors.white),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
