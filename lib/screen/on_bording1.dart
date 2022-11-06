import 'dart:math';

import 'package:day_23/screen/on_bording2.dart';
import 'package:day_23/widget/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

class On_bording1 extends StatelessWidget {
  const On_bording1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              top: -180,
              left: -20,
              child: Transform.rotate(
                angle: pi / 5,
                child: Container(
                  width: 480,
                  height: 450,
                  decoration: BoxDecoration(
                      color: Color(0xff8E8E93),
                      borderRadius: BorderRadius.circular(40)),
                ),
              )),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Update Progress Your Work Team',
                  style: Style(36, Color(0xffE4E4E6)),
                ),
                SizedBox(
                  height: 32,
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: ((context) => On_bording2())));
                  },
                  child: SvgPicture.asset('asset/Slider.svg'),
                ),
                //  SvgPicture.asset('asset/Slider.svg'),
                SizedBox(
                  height: 36,
                ),
                CustomButton(
                  title: 'Sing Up',
                  onTap: () {},
                ),
                SizedBox(
                  height: 16,
                ),
                CustomButton(
                  isBlue: true,
                  title: 'Login',
                  onTap: () {},
                )
              ],
            ),
          )
        ],
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
