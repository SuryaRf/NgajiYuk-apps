import 'package:flutter/material.dart';
import 'package:ngajiyuk/constant/category.dart';
import 'package:ngajiyuk/constant/color.dart';
import 'package:ngajiyuk/constant/text.dart';
import 'package:ngajiyuk/models/last_seen.dart';
import 'package:ngajiyuk/models/list_video.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _selectedIndex = false;
  int isSelectedIndex = 0;


  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      leading: const Icon(Icons.search_outlined),
      backgroundColor: searchBar.withOpacity(0.6),
      title: TextField(
        cursorColor: Colors.white,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Cari Video Belajar Disini',
          hintStyle: subText.copyWith(fontWeight: FontWeight.w200),
        ),
      ),
    );
    final heightApp = MediaQuery.of(context).size.height;
    final widthApp = MediaQuery.of(context).size.width;
    final bodyApp = heightApp -
        MediaQuery.of(context).padding.top -
        appBar.preferredSize.height;
    return Scaffold(
 
      backgroundColor: bgColor.withOpacity(0.5),
      appBar: appBar,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25, top: 15),
                    child: Text(
                      'Terakhir di lihat',
                      style: subText.copyWith(
                          fontSize: 19, fontWeight: FontWeight.w700),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: bodyApp * 0.4,
                width: widthApp,
                child: SizedBox(
                  height: bodyApp * 0.3,
                  width: widthApp,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: lastSeen.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: SizedBox(
                          height: bodyApp * 0.2,
                          width: widthApp,
                          child: Row(
                            children: [
                              Container(
                                  height: 100,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Image.asset(
                                    lastSeen[index].imgAsset,
                                    fit: BoxFit.fill,
                                  )),
                              const SizedBox(
                                width: 20,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    lastSeen[index].title,
                                    style: subText.copyWith(
                                        fontWeight: FontWeight.w700),
                                  ),
                                  const SizedBox(
                                    height: 35,
                                  ),
                                  const Row(
                                    children: [
                                      Icon(
                                        Icons.bookmark,
                                        color: Colors.blue,
                                        size: 35,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text('Video Tersimpan')
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 70,
                width: 900,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: category.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      height: 100,
                      width: 170,
                      child: GestureDetector(
                        child: ListTile(
                   
                          
                          onTap: () => setState(
                            () {
                              _selectedIndex = !_selectedIndex;
                              isSelectedIndex = index;
                            },
                          ),
                          title: Column(
                            children: [
                              Center(child: Text(category[index].name)),
                              Container(
                                height: 4,
                                width: 30,
                                color: isSelectedIndex == index ? defaultColor : Colors.transparent,
                              )
                            ],
                          ),
                        ),
                      ),
                    
                    );
                  },
                ),
              ),

              SizedBox(
               height: bodyApp * 0.2,
                width: widthApp,
                child: ListView.builder(
                 scrollDirection: Axis.horizontal,
                 itemCount: listVideo.length,
                  itemBuilder: (context, index){
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(listVideo[index].image),
                          const SizedBox(height: 7,),
                          Text(listVideo[index].title, style: subText.copyWith(fontWeight: FontWeight.w500),),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(listVideo[index].description, style: subText.copyWith(fontWeight: FontWeight.w200, fontSize: 10),),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
              ),
              const SizedBox(height: 20,),
              SizedBox(
               height: bodyApp * 0.2,
                width: widthApp,
                child: ListView.builder(
                 scrollDirection: Axis.horizontal,
                 itemCount: listVideo.length,
                  itemBuilder: (context, index){
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(listVideo[index].image),
                          const SizedBox(height: 7,),
                          Text(listVideo[index].title, style: subText.copyWith(fontWeight: FontWeight.w500),),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(listVideo[index].description, style: subText.copyWith(fontWeight: FontWeight.w200, fontSize: 10),),
                          ),
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
