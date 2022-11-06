import 'package:day_23/screen/nav_bar/test.dart';
import 'package:day_23/screen/stepper2.dart';
import 'package:day_23/widget/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'dart:math' as math;
import 'dart:io';

import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';

class Stepper1 extends StatefulWidget {
  const Stepper1({super.key});

  @override
  State<Stepper1> createState() => _Stepper1State();
}

class _Stepper1State extends State<Stepper1> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  XFile? _UiImage;
  chooseFromCamera() async {
    final ImagePicker _picker = ImagePicker();
    _UiImage = await _picker.pickImage(
        source: ImageSource.camera, maxHeight: 50, maxWidth: 40);
    setState(() {});
  }

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
                SvgPicture.asset('asset/Slider4.svg'),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              'Complete Your Profile',
              style: Style(16, Color(0xffF8F8F8), FontWeight.w700),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Color(0xff8E8E93),
                shape: BoxShape.circle,
              ),
              child: _UiImage == null
                  ? IconButton(
                      onPressed: () {
                        chooseFromCamera();
                      },
                      icon: Icon(
                        Icons.camera_alt_outlined,
                        color: Colors.white,
                      ),
                    )
                  : Image.file(File(_UiImage!.path)),
            ),
            SizedBox(
              height: 14,
            ),
            Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Your Full Name',
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
                        Icons.account_circle_outlined,
                        color: Color(0xff8A8A8E),
                      ),
                      hintText: 'Enter Your Full Name',
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
              title: 'Continue',
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Stepper2()));
              },
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
