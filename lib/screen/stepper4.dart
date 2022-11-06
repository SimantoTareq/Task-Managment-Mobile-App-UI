import 'package:day_23/screen/nav_bar/my_task.dart';
import 'package:day_23/widget/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'dart:math' as math;

class Stepper4 extends StatefulWidget {
  const Stepper4({super.key});

  @override
  State<Stepper4> createState() => _Stepper4State();
}

class _Stepper4State extends State<Stepper4> {
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
              children: [
                Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 95,
                ),
                SvgPicture.asset('asset/Slider7.svg'),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              'Enter Your Code Team',
              style: Style(16, Color(0xffF8F8F8), FontWeight.w700),
            ),
            SizedBox(
              height: 40,
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Code Team',
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
                      hintText: 'e.g KXHXHW',
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
            Spacer(),
            CustomButton(
              title: 'Continue',
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => MyTask()));
              },
            ),
            SizedBox(
              height: 18,
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
