import 'package:day_23/screen/on_bording1.dart';
import 'package:day_23/widget/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Started extends StatefulWidget {
  const Started({super.key});

  @override
  State<Started> createState() => _StartedState();
}

class _StartedState extends State<Started> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(18, 240, 18, 54),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                decoration: BoxDecoration(
                  color: Color(0xff292B3E),
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: EdgeInsets.all(33),
                child: SvgPicture.asset('asset/my_task.svg',
                    height: 32, width: 32)),
            SizedBox(
              height: 36,
            ),
            Text(
              'RANGANG',
              style: Style(
                  42,
                  Color(
                    0xffE4E4E6,
                  ),
                  FontWeight.w700),
            ),
            Text(
              'Your Personal Task Manager',
              style: Style(17, Color(0xffE9E9EB), FontWeight.w400),
            ),
            Spacer(),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => On_bording1()));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff246BFD),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(17.0),
                      child: Text(
                        'Getting Started',
                        style: Style(17, Color(0xffFFFFFF), FontWeight.w400),
                      ),
                    ),
                    Icon(
                      Icons.keyboard_arrow_right,
                      color: Color(0xffFFFFFF),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
