import 'package:day_23/screen/stepper3.dart';
import 'package:day_23/screen/stepper4.dart';
import 'package:day_23/widget/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Stepper2 extends StatefulWidget {
  const Stepper2({super.key});

  @override
  State<Stepper2> createState() => _Stepper2State();
}

class _Stepper2State extends State<Stepper2> {
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
                SvgPicture.asset('asset/Slider5.svg'),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            CustomButton(
              title: 'Create Your Own Team',
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Stepper3()));
              },
            ),
            SizedBox(
              height: 18,
            ),
            Text(
              'Or',
              style: Style(16, Color(0xffF8F8F8), FontWeight.w700),
            ),
            SizedBox(
              height: 18,
            ),
            CustomButton(
              isBlue: true,
              title: 'Join Team',
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Stepper4()));
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
