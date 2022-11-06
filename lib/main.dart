import 'package:day_23/screen/login.dart';
import 'package:day_23/screen/nav_bar/my_task.dart';
import 'package:day_23/screen/nav_bar/nav_bar_demo.dart';
import 'package:day_23/screen/on_bording1.dart';
import 'package:day_23/screen/sing_up.dart';
import 'package:day_23/screen/stepper1.dart';
import 'package:day_23/screen/stepper2.dart';
import 'package:day_23/screen/stepper3.dart';
import 'package:day_23/screen/stepper4.dart';
import 'package:day_23/screen/stepper5.dart';
import 'package:day_23/started.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          scaffoldBackgroundColor: Color(0xff191A22),
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: Started());
  }
}
