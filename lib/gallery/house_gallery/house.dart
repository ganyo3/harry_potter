import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:harry_potter/screens/mygallery.dart';

import '../../theme_storage/potterthemes.dart';

class House extends StatefulWidget {
  @override
  const House({super.key});

  @override
  State<StatefulWidget> createState() {
    return HouseState();
  }
}

class HouseState extends State<House> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    // var theme2 = PotterTheme.light();
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: PotterTheme.dark(),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
          foregroundColor: Theme.of(context).appBarTheme.foregroundColor,
           leading: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Gallery()),
              );
            },
            child: const Icon(Icons.arrow_back),
          ),
          title: Text(
            "Hogwarts Halls",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          centerTitle: true,
        ),
        body: DecoratedBox(
          decoration: const BoxDecoration(
            // Image set to background of the body
            image: DecorationImage(
                image: AssetImage("assets/images/hall_way.jpg"),
                opacity: 0.4,
                fit: BoxFit.fill),
          ),
          child: SafeArea(
            child: SingleChildScrollView(
              child: Center(
                child: Column(
                  children: [

                      carousel(),
                     
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.08,
                        vertical: size.height * 0.05,
                      ),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              const CircleAvatar(
                                backgroundImage:
                                    AssetImage("assets/images/gryfendor.jpg"),
                                radius: 70,
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: size.width * 0.125,
                                    vertical: size.height * 0.2,
                                  ),
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/gryfendor_background.jpg"),
                                          fit: BoxFit.fill)),
                                ),
                              ),
                              
                            ],
                          ),
                          SizedBox(width: size.width*0.05,),
                          Column(
                            children: [
                              const CircleAvatar(
                                backgroundImage:
                                    AssetImage("assets/images/slytherin.jpg"),
                                radius: 70,
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: size.width * 0.125,
                                    vertical: size.height * 0.2,
                                  ),
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/slytherin_background.jpg"),
                                          fit: BoxFit.fill)),
                                ),
                              ),
                              
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.08,
                        vertical: size.height * 0.02,
                      ),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              const CircleAvatar(
                                backgroundImage:
                                    AssetImage("assets/images/hufflepuff.jpg"),
                                radius: 70,
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: size.width * 0.125,
                                    vertical: size.height * 0.2,
                                  ),
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/hufflepuf_background.jpg"),
                                          fit: BoxFit.fill)),
                                ),
                              ),
                              
                            ],
                          ),
                          SizedBox(width: size.width*0.05,),
                          Column(
                            children: [
                              const CircleAvatar(
                                backgroundImage:
                                    AssetImage("assets/images/ravenclaw.jpg"),
                                radius: 70,
                              ),
                               GestureDetector(
                                onTap: () {},
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: size.width * 0.125,
                                    vertical: size.height * 0.2,
                                  ),
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/ravenclaw_background.jpg"),
                                          fit: BoxFit.fill)),
                                ),
                              ),
                              
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  carousel() {
    var size = MediaQuery.of(context).size;
    final List<String> images = [
      'assets/images/gryfendor.jpg',
      'assets/images/slytherin.jpg',
      'assets/images/hufflepuff.jpg',
      'assets/images/ravenclaw.jpg',
      'assets/images/housedets.jpg',
    ];

    return CarouselSlider(
      options: CarouselOptions(
        height: size.height * 0.25,
        autoPlay: true,
        enlargeCenterPage: false,
        // aspectRatio: 16/9,
        viewportFraction: 1,
      ),
      items: images.map((imageUrl) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
            height: size.height * 0.25,
              decoration: BoxDecoration(
                 image: DecorationImage(
                      image: AssetImage(imageUrl), fit: BoxFit.fill)),
            );
          },
        );
      }).toList(),
    );
  }
}
