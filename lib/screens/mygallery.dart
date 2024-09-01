import 'package:flutter/material.dart';
import '../gallery/character_gallery/character_page.dart';
import '../gallery/house_gallery/house.dart';
import '../gallery/potion_gallery/potiondisplay.dart';
import '../gallery/sportstool.dart';
import '../gallery/wand_gallery/wand_display.dart';
import '../theme_storage/potterthemes.dart';

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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          backgroundColor: theme.colorScheme.onSurface,
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
                  Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(
                            vertical: size.height * 0.02,
                            horizontal: size.width * 0.05),
                        padding: EdgeInsets.symmetric(
                          vertical: size.height * 0.08,
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                                image:
                                    AssetImage("assets/images/houses_flag.jpg"),
                                fit: BoxFit.fill)),
                      ),
                      Positioned(
                        top: size.height * 0.16,
                        left: size.width * 0.25,
                        width: size.width * 0.45,
                        height: size.height * 0.04,
                        child: FloatingActionButton.extended(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const House()));
                            },
                            label: const Text("House")),
                      )
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(
                            vertical: size.height * 0.02,
                            horizontal: size.width * 0.05),
                        padding: EdgeInsets.symmetric(
                          vertical: size.height * 0.08,
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                                image: AssetImage(
                                    "assets/images/wallpaper-harry-potter.jpg"),
                                fit: BoxFit.fill)),
                      ),
                      Positioned(
                        top: size.height * 0.16,
                        left: size.width * 0.25,
                        width: size.width * 0.45,
                        height: size.height * 0.04,
                        child: FloatingActionButton.extended(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const CharacterPage()));
                            }, label: const Text("Characters")),
                      )
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(
                            vertical: size.height * 0.02,
                            horizontal: size.width * 0.05),
                        padding: EdgeInsets.symmetric(
                          vertical: size.height * 0.08,
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                                image: AssetImage(
                                    "assets/images/wand-collection-.jpeg"),
                                fit: BoxFit.fill)),
                      ),
                      Positioned(
                        top: size.height * 0.16,
                        left: size.width * 0.25,
                        width: size.width * 0.45,
                        height: size.height * 0.04,
                        child: FloatingActionButton.extended(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const MagicWand()));
                            }, label: const Text("Wands")),
                      )
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(
                            vertical: size.height * 0.02,
                            horizontal: size.width * 0.05),
                        padding: EdgeInsets.symmetric(
                          vertical: size.height * 0.08,
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                                image:
                                    AssetImage("assets/images/artifacts.jpg"),
                                fit: BoxFit.fill)),
                      ),
                      Positioned(
                        top: size.height * 0.16,
                        left: size.width * 0.25,
                        width: size.width * 0.45,
                        height: size.height * 0.04,
                        child: FloatingActionButton.extended(
                            onPressed: () {
                               Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const SportTools()));
                            }, label: const Text("Artifacts")),
                      )
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(
                            vertical: size.height * 0.02,
                            horizontal: size.width * 0.05),
                        padding: EdgeInsets.symmetric(
                          vertical: size.height * 0.08,
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                                image:
                                    AssetImage("assets/images/magicpotion.jpg"),
                                fit: BoxFit.fill)),
                      ),
                      Positioned(
                        top: size.height * 0.16,
                        left: size.width * 0.25,
                        width: size.width * 0.45,
                        height: size.height * 0.04,
                        child: FloatingActionButton.extended(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const PotionDisplay()));
                            }, label: const Text("Potions")),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
