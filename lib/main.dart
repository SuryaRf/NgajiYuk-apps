import 'package:flutter/material.dart';
import 'package:ngajiyuk/choose_page/choose_page.dart';
import 'package:ngajiyuk/home_page/home_page.dart';
import 'package:ngajiyuk/start_screen/start_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ngaji Yuk',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
         colorScheme: const ColorScheme.dark(primary: Color(0xff030637)),
         useMaterial3: true,
      ),
      home: StartScreen(),
    );
  }
}