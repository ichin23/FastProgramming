import 'package:fastprogramming/configs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: bgColor,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.person,
                            size: 130,
                            color: Colors.black,
                          ),
                          Column(
                            children: [
                              Text(
                                "NAme: \$name",
                                style: postText,
                              ),
                              Text(
                                "Points: \$xp",
                                style: postText,
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: Icon(
                          Icons.notifications,
                          color: Colors.yellow,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 15, 10, 20),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 5),
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.red),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 5),
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.blue),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 5),
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.green),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 5),
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 5),
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.yellow),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 5),
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.purple),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                    margin: EdgeInsets.all(20),
                    child: Column(children: [
                      Container(
                          width: size.width,
                          decoration: BoxDecoration(
                              color: primary,
                              borderRadius: BorderRadius.circular(15)),
                          child: Text(
                            "Recent Posts",
                            style: profileText,
                            textAlign: TextAlign.center,
                          )),
                      Container(
                        height: 500,
                        child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: 3,
                          itemBuilder: (context, i) => Container(
                            margin: EdgeInsets.only(top: 15),
                            width: size.width - 20,
                            height: size.height * 0.15,
                            decoration: BoxDecoration(color: bgColor2),
                          ),
                        ),
                      ),
                    ]))
              ],
            ),
          ),
        ));
  }
}
