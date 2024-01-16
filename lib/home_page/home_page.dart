import 'package:flutter/material.dart';
import 'package:ngajiyuk/constant/color.dart';
import 'package:ngajiyuk/constant/text.dart';
import 'package:ngajiyuk/models/last_seen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
        leading: const Icon(Icons.search_outlined),
        backgroundColor: bgColor,
        title: TextField(
          cursorColor: Colors.white,
  decoration: InputDecoration(
    border: InputBorder.none,
    hintText: 'Cari Video Belajar Disini',
    hintStyle: subText.copyWith(fontWeight: FontWeight.w200),
    
  ),
),
        // title: Text('Cari Video Belajar Disini', style: subText.copyWith(fontWeight: FontWeight.w200),),
      );
      final heightApp = MediaQuery.of(context).size.height;
    final widthApp = MediaQuery.of(context).size.width;
    final bodyApp = heightApp - MediaQuery.of(context).padding.top - appBar.preferredSize.height;
    return Scaffold(
      appBar: appBar,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Text('Terakhir di lihat', style: subText.copyWith(fontSize: 19),),
              SizedBox(
                width: widthApp *0.9,
                height: heightApp * 0.3,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: lastSeen.length,
                  itemBuilder: (BuildContext context, int index){
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Container(
                      
                      height: bodyApp * 0.2 ,
                      width: widthApp * 0.6,
                      decoration: BoxDecoration(
                        color: Colors.white,
                         borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.white.withOpacity(0.5),
                                    spreadRadius: 1,
                                    blurRadius: 1,
                                    offset: const Offset(0, 0),
                                    blurStyle: BlurStyle.normal),
                              ],
                      ),
                    ),
                  );
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}