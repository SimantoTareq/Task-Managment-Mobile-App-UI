import 'package:day_23/screen/stepper5.dart';
import 'package:day_23/widget/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';

class Stepper3 extends StatefulWidget {
  const Stepper3({super.key});

  @override
  State<Stepper3> createState() => _Stepper3State();
}

class _Stepper3State extends State<Stepper3> {
  final TextEditingController emailController = TextEditingController();
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
                SvgPicture.asset('asset/Slider6.svg'),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              'Create Your Own Team?',
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
                    'Your Team Name',
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
                      hintText: 'e.g Parto Team',
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
                    .push(MaterialPageRoute(builder: (context) => Stepper5()));
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
