import 'package:fastprogramming/data/post.dart';
import 'package:flutter/material.dart';

import '../configs.dart';

class PostDetail extends StatefulWidget {
  @override
  _PostDetailState createState() => _PostDetailState();
}

class _PostDetailState extends State<PostDetail> {
  @override
  Widget build(BuildContext context) {
    final Post post = ModalRoute.of(context).settings.arguments as Post;
    return Scaffold(
      appBar: AppBar(
        title: Text(post.title),
      ),
      backgroundColor: bgColor,
      body: Stack(children: [
        Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.person,
                    size: 30,
                    color: Colors.white24,
                  ),
                  Text(
                    post.user,
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
          Container(
            child: post.code == null
                ? Text(
                    "No code avaible",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )
                : Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    decoration: BoxDecoration(color: bgColor2),
                    child: Text(
                      post.code,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
          ),
        ]),
        Positioned(
          height: 500,
          width: MediaQuery.of(context).size.width,
          bottom: 0,
          child: Container(
            padding: EdgeInsets.all(15),
            height: 500,
            margin: EdgeInsets.only(left: 15, right: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: bgColor2,
            ),
            child: ListView.builder(
              itemCount: post.comments.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onDoubleTap: () => setState(() {
                    post.comments[index].changeFavorite();
                  }),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.person,
                                color: primary,
                                size: 17,
                              ),
                              Text(
                                post.comments[index].user,
                                style: postText2,
                              )
                            ],
                          ),
                          Container(
                              padding: EdgeInsets.only(left: 15),
                              child: Text(post.comments[index].comment,
                                  style: postText)),
                        ],
                      ),
                      IconButton(
                        icon: !post.comments[index].isFavorite
                            ? (Icon(Icons.favorite_border))
                            : (Icon(Icons.favorite)),
                        onPressed: () {
                          setState(() {
                            post.comments[index].changeFavorite();
                          });
                          print(post.comments[index].isFavorite);
                        },
                        color: !post.comments[index].isFavorite
                            ? (Colors.white10)
                            : Colors.red,
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ]),
    );
  }
}
