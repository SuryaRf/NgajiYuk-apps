import 'package:flutter/material.dart';
import 'package:ngajiyuk/constant/color.dart';
import 'package:ngajiyuk/home_page/bookmark_page.dart';
import 'package:ngajiyuk/home_page/explore_page.dart';
import 'package:ngajiyuk/home_page/home_page.dart';
import 'package:ngajiyuk/home_page/setting_page.dart';

class ChoosePage extends StatefulWidget {
  const ChoosePage({super.key});

  @override
  State<ChoosePage> createState() => _ChoosePageState();
}

class _ChoosePageState extends State<ChoosePage> {
  int myIndex = 0;

  final List<Widget> _children = const [
    HomePage(),
    ExplorePage(),
    BookmarkPage(),
    SettingPage(),
  ] ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
showUnselectedLabels: false,
onTap: (index) => setState(() {
  myIndex = index;
}),
currentIndex: myIndex,
backgroundColor: bgColor,
unselectedItemColor: Colors.white,
selectedItemColor: Colors.blue,
  items: const [
    BottomNavigationBarItem(icon: Icon(Icons.home),
    label: 'Beranda',),
    BottomNavigationBarItem(icon: Icon(Icons.map_sharp),
    label: 'Jelajahi',),
    BottomNavigationBarItem(icon: Icon(Icons.bookmark_sharp),
    label: 'Disimpan',),
    BottomNavigationBarItem(icon: Icon(Icons.settings),
    label: 'Pengaturan',),
    
    
  ],
  
  ),
body:Center(
  child: _children.elementAt(myIndex),
) ,
    );
  }
}