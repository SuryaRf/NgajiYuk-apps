import 'package:flutter/material.dart';
import 'package:ngajiyuk/choose_page/choose_page.dart';
import 'package:ngajiyuk/constant/color.dart';
import 'package:ngajiyuk/constant/text.dart';
import 'package:ngajiyuk/home_page/home_page.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final heightApp = MediaQuery.of(context).size.height;
    final widthApp = MediaQuery.of(context).size.width;
    final bodyApp = heightApp - MediaQuery.of(context).padding.top;
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: bodyApp * 0.1,
              width: widthApp * 1,
              decoration: BoxDecoration(color: bgColor),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      'NgajiYuk',
                      style: titleApp.copyWith(fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Text(
                      'Lewati',
                      style: subText.copyWith(fontWeight: FontWeight.w300),
                    ),
                  ),
                ],
              ),
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 85),
                  child: Center(
                    child: Container(
                      height: bodyApp * 0.3,
                      width: widthApp * 0.8,
                      decoration: BoxDecoration(
                        color: defaultColor,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(60),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 5,
                  left: 20,
                  top: 20,
                  child: Image.asset(
                    'assets/icon/rara.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 80, left: 40),
              child: Text(
                'Nussa & Rara',
                style: titleApp,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 40),
              child: Text(
                'Belajar mengaji asik dan menarik\nbersama kartun terbaik Indonesia',
                style: subText.copyWith(fontSize: 17),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60, left: 40),
              child: Container(
                height: bodyApp * 0.13,
                width: widthApp * 0.8,
                decoration: BoxDecoration(
                    color: defaultColor,
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const ChoosePage()));
                    },
                    child: Text(
                      'Mulai Belajar',
                      style: subText.copyWith(fontSize: 19),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
