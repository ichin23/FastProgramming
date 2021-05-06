import 'package:fastprogramming/data/languages.dart';
import 'package:fastprogramming/data/post.dart';

import 'package:fastprogramming/widgets/postHome.dart';
import 'package:flutter/material.dart';
import 'package:fastprogramming/configs.dart';

class HomePage extends StatefulWidget {
  List<Post> postsList = posts;
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //Controlador caixa de pesquisa
  final TextEditingController searchText = TextEditingController();

  //Defini o FocusNode
  FocusNode myFocusNode;

  @override
  void initState() {
    super.initState();
    myFocusNode = FocusNode();
  }

  @override
  void dispose() {
    //Limpa o focus quando o form for liberado
    myFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //Tamanho da tela
    var size = MediaQuery.of(context).size;
    final List<Language> languages = [
      Language(
          name: "Python",
          color: Color(0xFFF77FFF),
          image:
              "https://docs.google.com/uc?id=1NUnRdN7HFpCclRtWYsjTB03BIwiS4lAn"),
      Language(
          name: "C",
          color: Color(0xFF9C9CF5),
          image:
              "https://docs.google.com/uc?id=1o1sVKVwZ3Aih76K6eKslCywtyU7Skd8B"),
      Language(
          name: "Java",
          color: Color(0xFF9Cd9F5),
          image:
              "https://docs.google.com/uc?id=1jRo3gNdRs915msPV_bqDZe6JlsBQw-T9"),
      Language(
        name: "JavaScript",
        color: Color(0xFF765432),
        image:
            "https://docs.google.com/uc?id=11PLOv0IsB4o5GCjaALMhSal2ziW7WZZY",
      ),
      Language(
        name: "Flutter",
        color: Color(0xFF890465),
        image:
            "https://docs.google.com/uc?id=14ij6ZBd0na64d2P76zivJWS-1sAIxUN4",
      ),
      Language(
        name: "Ruby",
        color: Color(0xFF322901),
        image:
            "https://docs.google.com/uc?id=1sAR0-VKnaw_3mdY7l8lM_WPABCprbA7o",
      )
    ];

    return Scaffold(
      appBar: AppBar(
        title: Container(
            padding: EdgeInsets.only(left: 10), child: Text("FastProgramming")),
        actions: [
          Padding(
              padding: EdgeInsets.only(right: 15), child: Icon(Icons.search))
        ],
      ),
      backgroundColor: bgColor,
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 15, top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Popular Tags:",
                  style: TextStyle(color: Colors.white60),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10, left: 0, right: 0),
            height: size.height * 0.2,
            width: size.width - 20,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: languages.length,
                itemBuilder: (BuildContext context, int i) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network(
                        languages[i].image,
                        height: 80,
                      ),
                      Text(
                        languages[i].name,
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  );
                }),
          ),
          HomePost()
        ],
      )),
    );
  }
}

class Lista extends StatelessWidget {
  const Lista({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(5),
      scrollDirection: Axis.horizontal,
      children: [
        Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
          width: 80,
        ),
        Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
          width: 80,
        ),
        Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
          width: 80,
        ),
        Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
          width: 80,
        ),
      ],
    );
  }
}
