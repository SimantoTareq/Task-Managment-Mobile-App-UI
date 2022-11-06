import 'dart:math';

import 'package:day_23/screen/nav_bar/test.dart';
import 'package:day_23/screen/on_bording2.dart';
import 'package:day_23/screen/sing_up.dart';
import 'package:day_23/widget/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:math' as math;

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.only(top: 36, left: 16, right: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.close_outlined,
                  color: Colors.white,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => SingUp()));
                  },
                  child: Text(
                    'Sing Up',
                    style: Style(17, Color(0xffE4E4E6), FontWeight.w700),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Your Mail Adress',
                    style: Style(16, Color(0xff8A8A8E), FontWeight.w400),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  style: TextStyle(color: Colors.white),
                  controller: emailController,
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.email_outlined,
                        color: Color(0xff8A8A8E),
                      ),
                      hintText: 'Enter Your Email Adress',
                      hintStyle: Style(16, Color(0xff8A8A8E), FontWeight.w400),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                        borderSide: BorderSide(color: Color(0xff8A8A8E)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                        borderSide: BorderSide(color: Color(0xff8A8A8E)),
                      )),
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Your Password',
                    style: Style(16, Color(0xff8A8A8E), FontWeight.w400),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  style: TextStyle(color: Colors.white),
                  obscureText: true,
                  controller: passwordController,
                  decoration: InputDecoration(
                      prefixIcon: Transform.rotate(
                        angle: 90 * math.pi / 180,
                        child: Icon(
                          Icons.key,
                          color: Color(0xff8A8A8E),
                        ),
                      ),
                      hintText: 'Enter Your Password',
                      hintStyle: Style(16, Color(0xff8A8A8E), FontWeight.w400),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                        borderSide: BorderSide(color: Color(0xff8A8A8E)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                        borderSide: BorderSide(color: Color(0xff8A8A8E)),
                      )),
                ),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            CustomButton(
              title: 'Login',
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => SingUp()));
              },
            ),
            SizedBox(
              height: 18,
            ),
            Text(
              'Forgot Your Password',
              style: Style(16, Color(0xffF8F8F8), FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  CustomButton({Key? key, this.title, this.onTap, this.isBlue});
  String? title;
  VoidCallback? onTap;
  bool? isBlue;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onTap,
      minWidth: double.infinity,
      color: isBlue == null ? Color(0xff246BFD) : Colors.transparent,
      child: Text(
        '${title}',
        style: Style(17, Colors.white),
      ),
      padding: EdgeInsets.symmetric(vertical: 17),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(28),
          side: BorderSide(
            color: isBlue == null ? Colors.transparent : Colors.white70,
          )),
    );
  }
}
