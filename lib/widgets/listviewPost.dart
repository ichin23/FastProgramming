import 'package:fastprogramming/configs.dart';
import 'package:fastprogramming/data/post.dart';
import 'package:flutter/material.dart';

class ListPosts extends StatefulWidget {
  @override
  _ListPostsState createState() => _ListPostsState();
}

class _ListPostsState extends State<ListPosts> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: bgColor2,
            ),
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 5),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: primary,
                  ),
                  child: Text(
                    posts[index].title,
                    style: postTitle,
                    textAlign: TextAlign.center,
                  ),
                  width: size.width,
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(5, 5, 5, 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.person,
                                size: 25,
                                color: Colors.white,
                              ),
                              Text(posts[index].user, style: postText)
                            ],
                          ),
                          Text("#Tags, #TAGS", style: postText2),
                        ],
                      ),
                    ),
                    Text(posts[index].description, style: postText),
                    posts[index].code != null
                        ? Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 15),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(15),
                                      bottomRight: Radius.circular(15)),
                                  color: bgColor,
                                ),
                                padding: EdgeInsets.all(15),
                                child: Text(
                                  posts[index].code,
                                  style: postCode,
                                ),
                              ),
                            ],
                          )
                        : Container(),
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
                            onPressed: () {},
                            child: Text("Answers",
                                style: TextStyle(fontFamily: 'OpenSans')))
                      ],
                    )
                  ],
                )
              ],
            ),
          );
        });
  }
}
