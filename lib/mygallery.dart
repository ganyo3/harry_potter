import 'package:flutter/material.dart';
import 'package:harry_potter/gallery/character_page.dart';
import 'package:harry_potter/gallery/potiondisplay.dart';
import 'package:harry_potter/gallery/house.dart';
import 'package:harry_potter/gallery/sportstool.dart';
import 'package:harry_potter/gallery/wand_display.dart';
import 'potterthemes.dart';

class Gallery extends StatefulWidget {
  @override
  const Gallery({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return GalleryState();
  }
}

class GalleryState extends State<Gallery> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var theme = PotterTheme.dark();
    var theme2 = PotterTheme.light();
    // TODO: implement build
    return Scaffold(
      // backgroundColor: theme.colorScheme.onBackground,
      appBar: AppBar(
        backgroundColor: theme.colorScheme.onBackground,
        foregroundColor: theme.appBarTheme.foregroundColor,
        title: Text(
          "Hogwarts Gallery",
          style: theme2.textTheme.displayLarge,
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: size.height * 0.005,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CharacterPage()));
                  },
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          vertical: size.height * 0.08,
                          horizontal: size.width * 0.39,
                        ),
                        decoration: const BoxDecoration(
                           borderRadius: BorderRadius.only(
                           topRight: Radius.circular(50),
                           bottomRight: Radius.circular(50),
                          ),
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("assets/images/goblin.jpg"),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: size.width * 0.02),
                        child: Text(
                          "Character\nCollection",
                          style: theme2.textTheme.bodyLarge,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height * 0.005,
                ),                
                SizedBox(
                  height: size.height * 0.005,
                ),
                GestureDetector(
                    onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MagicWand()));
                    },
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          vertical: size.height * 0.08,
                          horizontal: size.width * 0.36,
                        ),
                        decoration: const BoxDecoration(
                           borderRadius: BorderRadius.only(
                           topRight: Radius.circular(50),
                           bottomRight: Radius.circular(50),
                          ),
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image:
                                AssetImage("assets/images/wand-collection-.jpeg"),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: size.width * 0.02),
                        child: Text(
                          "Wand\nCollection",
                          style: theme2.textTheme.bodyLarge,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height * 0.005,
                ),
                GestureDetector(
                    onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SportTools()));
                    },
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          vertical: size.height * 0.08,
                          horizontal: size.width * 0.39,
                        ),
                        decoration: const BoxDecoration(
                           borderRadius: BorderRadius.only(
                           topRight: Radius.circular(50),
                           bottomRight: Radius.circular(50),
                          ),
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("assets/images/artifacts.jpg"),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: size.width * 0.02),
                        child: Text(
                          "Artifacts\nCollection",
                          style: theme2.textTheme.bodyLarge,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height * 0.005,
                ),
                GestureDetector(
                    onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PotionDisplay()));
                    },
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          vertical: size.height * 0.08,
                          horizontal: size.width * 0.36,
                        ),
                        decoration: const BoxDecoration(
                           borderRadius: BorderRadius.only(
                           topRight: Radius.circular(50),
                           bottomRight: Radius.circular(50),
                          ),
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("assets/images/magicpotion.jpg"),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: size.width * 0.02),
                        child: Text(
                          "Potion\nCollection",
                          style: theme2.textTheme.bodyLarge,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height * 0.005,
                ),
                GestureDetector(
                    onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const House()));
                    },
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          vertical: size.height * 0.08,
                          horizontal: size.width * 0.39,
                        ),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                           topRight: Radius.circular(50),
                           bottomRight: Radius.circular(50),
                          ),
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("assets/images/houselogo.jpg"),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: size.width * 0.02),
                        child: Text(
                          "Hogwarts\nHalls",
                          style: theme2.textTheme.bodyLarge,
                        ),
                      )
                    ],
                  ),
                ),
                 SizedBox(
                  height: size.height * 0.005,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
