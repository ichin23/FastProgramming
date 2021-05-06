import 'package:fastprogramming/configs.dart';
import 'package:fastprogramming/data/post.dart';
import 'package:fastprogramming/routes/routs.dart';

import 'package:flutter/material.dart';

class HomePost extends StatefulWidget {
  final Function press;
  HomePost({
    Key key,
    this.press,
  }) : super(key: key);

  @override
  _HomePostState createState() => _HomePostState();
}

class _HomePostState extends State<HomePost> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var post = posts;
    return Container(
      width: size.width,
      height: size.height * 0.6,
      child: ListView.builder(
          itemCount: post.length,
          itemBuilder: (BuildContext context, i) {
            return GestureDetector(
              onTap: () => Navigator.of(context)
                  .pushNamed(AppRoutes.DETAIL_POST, arguments: post[i]),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: bgColor2,
                ),
                margin: EdgeInsets.all(10),
                padding:
                    EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 5),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: primary,
                      ),
                      child: Text(
                        post[i].title,
                        style: postTitle,
                        textAlign: TextAlign.center,
                      ),
                      width: size.width,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.person,
                              size: 30,
                              color: Colors.white24,
                            ),
                            Text(
                              posts[i].user,
                              style: postText,
                            ),
                          ],
                        ),
                        Text(
                          "#TAGS",
                          style: TextStyle(color: primary),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: Text("Reply",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'OpenSans'))),
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).pushNamed(
                                  AppRoutes.DETAIL_POST,
                                  arguments: post[i]);
                            },
                            child: Text("Answers",
                                style: TextStyle(fontFamily: 'OpenSans')))
                      ],
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
