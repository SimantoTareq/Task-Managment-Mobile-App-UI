import 'package:day_23/widget/const.dart';
import 'package:day_23/widget/my_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyTask extends StatelessWidget {
  const MyTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Colors.green,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                margin: EdgeInsets.only(bottom: 32),
                height: 60,
                child: Row(
                  children: [
                    CircleAvatar(),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Pranto Team",
                      style: Style(16, Colors.grey),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.white,
                    ),
                    Spacer(),
                    Icon(
                      Icons.search,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  "Project Task",
                  style: Style(16, Colors.grey),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 16, top: 16, bottom: 16),
                height: 62,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: myList.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(right: 12),
                        width: 130,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: cardColor,
                        ),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 12),
                              width: 5,
                              color: myList[index].color,
                            ),
                            Expanded(
                              //color:Colors.red,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "${myList[index].percentage}",
                                    style: Style(12, Colors.white),
                                  ),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  Text(
                                    "${myList[index].taskName}",
                                    style: Style(12, Colors.grey),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    }),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "My Task",
                      style: Style(16, Colors.grey),
                    ),
                    Text(
                      "See All",
                      style: Style(16, Colors.grey),
                    ),
                  ],
                ),
              ),
              ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: myList.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.all(14),
                      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                      height: 110,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: cardColor),
                      child: Row(
                        children: [
                          Expanded(
                              flex: 2,
                              child: Align(
                                alignment: Alignment.topCenter,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(
                                    Icons.check_box_rounded,
                                    color: Colors.white,
                                  ),
                                ),
                              )),
                          Expanded(
                            flex: 10,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "${myList[index].title}",
                                      style: Style(16, Colors.white),
                                    ),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 12, vertical: 8),
                                      decoration: BoxDecoration(
                                        color: myList[index]
                                            .color
                                            .withOpacity(0.2),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      child: Text(
                                        "${myList[index].taskName}",
                                        style: Style(14, myList[index].color),
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Stack(
                                        children: [
                                          Container(
                                            height: 5,
                                            decoration: BoxDecoration(
                                              color: myList[index]
                                                  .color
                                                  .withOpacity(0.2),
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                            ),
                                          ),
                                          LayoutBuilder(
                                              builder: (context, constraints) {
                                            return Container(
                                              height: 5,
                                              width: constraints.maxWidth *
                                                  myList[index].percentage /
                                                  100,
                                              decoration: BoxDecoration(
                                                color: myList[index].color,
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                              ),
                                            );
                                          })
                                        ],
                                      ),
                                    ),
                                    Text(
                                      "5/10",
                                      style: Style(16, Colors.white),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    CircleAvatar(
                                      maxRadius: 8,
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      "5/10",
                                      style: Style(16, Colors.white),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
