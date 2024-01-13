import 'package:flutter/material.dart';
import 'package:ngajiyuk/constant/color.dart';
import 'package:ngajiyuk/constant/text.dart';

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
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                height: bodyApp * 0.1,
                width: widthApp * 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'NgajiYuk',
                      style: titleApp.copyWith(fontSize: 20),
                    ),
                    Text(
                      'Lewati',
                      style: subText.copyWith(fontWeight: FontWeight.w300),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 120,
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Container(
                    height: bodyApp * 0.3,
                    width: widthApp * 0.8,
                    decoration: BoxDecoration(
                      color: defaultColor,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(20),
                    ),
           
                  ),
                ),
                Positioned(
                    bottom: 0,
                    right: 5,
                    left: 5,
                    top: 0,
                    child: Image.asset(
                      'assets/icon/rara.png',
                     fit: BoxFit.cover,
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
