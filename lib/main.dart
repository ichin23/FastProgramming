import 'package:fastprogramming/configs.dart';
import 'package:fastprogramming/routes/routs.dart';
import 'package:fastprogramming/screens/addPost.dart';
import 'package:fastprogramming/screens/homepage.dart';
import 'package:fastprogramming/screens/profile.dart';
import 'package:flutter/material.dart';
import 'screens/postDetail.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'FastProgramming',
        theme: ThemeData(
          fontFamily: 'Anton',
          primaryColor: Color(0xFF6988BE),
        ),
        home: MyHomePage(),
        routes: {AppRoutes.DETAIL_POST: (ctx) => PostDetail()});
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  static List<Widget> _pages = <Widget>[
    HomePage(),
    AddPost(),
    Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _pages.elementAt(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: "Add",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: primary,
          onTap: _onItemTapped,
          showUnselectedLabels: false,
          backgroundColor: bgColor2,
        ));
  }
}
