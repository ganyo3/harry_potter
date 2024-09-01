import 'package:flutter/material.dart';
// import 'package:harry_potter/local_path_storage.dart';
import '../theme_storage/potterthemes.dart';
import 'artifacts/magic_artifacts.dart';
import 'books/books.dart';
import 'characters/characters.dart';
import 'house/halls.dart';
import 'movies/movies.dart';
import 'potion/potions.dart';
import 'spells/spells.dart';
import 'wand/wands.dart';

class TourLink extends StatefulWidget {
  @override
  const TourLink({super.key});

  @override
  State<StatefulWidget> createState() {
    return TourLinkState();
  }
}

class TourLinkState extends State<TourLink> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var theme = PotterTheme.dark();
    var theme2 = PotterTheme.light();
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
       // backgroundColor: theme.colorScheme.onBackground,
        foregroundColor: theme.appBarTheme.foregroundColor,
        title: Text(
          "Dashboard",
          style: theme2.textTheme.displayLarge,
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          //A Welcome Text
          child: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: Column(children: [
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: size.width * 0.3,
                ),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/images/wallpaper-trio.jpg"),
                  ),
                ),
              ),
              // SizedBox(height: size.height*0.02,),
              SizedBox(
                height: size.height * 0.55,
                child: GridView.count(
                    physics: const AlwaysScrollableScrollPhysics(),
                    padding: EdgeInsets.symmetric(
                        vertical: size.height * .02,
                        horizontal: size.width * .02),
                    crossAxisCount: 2,
                    crossAxisSpacing: 7,
                    mainAxisSpacing: 7,
                    children: [
                      //Movie Collections
                      FloatingActionButton.large(
                        //backgroundColor: theme.colorScheme.onBackground,
                        foregroundColor:
                            theme2.floatingActionButtonTheme.foregroundColor,
                        shape: const ContinuousRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Movies()),
                          );
                        },
                        child: Column(
                          children: [
                            Expanded(
                              flex: 8,
                              child: Container(
                                decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                    ),
                                    image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: AssetImage(
                                            "assets/images/movieswall.jpg"))),
                              ),
                            ),
                            const Expanded(
                                flex: 1, child: Text("Movie Coolection"))
                          ],
                        ),
                      ),
                      //Character Collections
                      FloatingActionButton.large(
                        //backgroundColor: theme.colorScheme.onBackground,
                        foregroundColor:
                            theme2.floatingActionButtonTheme.foregroundColor,
                        shape: const ContinuousRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                        onPressed: () {
                            Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Books()),
                          );
                        },
                        child: Column(
                          children: [
                            Expanded(
                              flex: 8,
                              child: Container(
                                decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                    ),
                                    image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: AssetImage(
                                            "assets/images/novels.jpg"))),
                              ),
                            ),
                            const Expanded(
                                flex: 1, child: Text("Novel Collection"))
                          ],
                        ),
                      ),
                      //Character Collections
                      FloatingActionButton.large(
                      //  backgroundColor: theme.colorScheme.onBackground,
                        foregroundColor:
                            theme2.floatingActionButtonTheme.foregroundColor,
                        shape: const ContinuousRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                        onPressed: () {
                           Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>const Character()),
                          );
                        },
                        child: Column(
                          children: [
                            Expanded(
                              flex: 8,
                              child: Container(
                                decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                    ),
                                    image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: AssetImage(
                                            "assets/images/goblin.jpg"))),
                              ),
                            ),
                            const Expanded(flex: 1, child: Text("Characters"))
                          ],
                        ),
                      ),
                      //Wand Collections
                      FloatingActionButton.large(
                       // backgroundColor: theme.colorScheme.onBackground,
                        foregroundColor:
                            theme2.floatingActionButtonTheme.foregroundColor,
                        shape: const ContinuousRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                        onPressed: () {
                           Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Wands()),
                          );
                        },
                        child: Column(
                          children: [
                            Expanded(
                              flex: 8,
                              child: Container(
                                decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                    ),
                                    image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: AssetImage(
                                            "assets/images/wand-collection-.jpeg"))),
                              ),
                            ),
                            const Expanded(
                                flex: 1, child: Text("Wand Coolection"))
                          ],
                        ),
                      ),
                      //Magic Spells
                      FloatingActionButton.large(
                      //  backgroundColor: theme.colorScheme.onBackground,
                        foregroundColor:
                            theme2.floatingActionButtonTheme.foregroundColor,
                        shape: const ContinuousRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                        onPressed: () {
                           Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Spells()),
                          );
                        },
                        child: Column(
                          children: [
                            Expanded(
                              flex: 8,
                              child: Container(
                                decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                    ),
                                    image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: AssetImage(
                                            "assets/images/magicspell.jpg"))),
                              ),
                            ),
                            const Expanded(flex: 1, child: Text("Magic Spells"))
                          ],
                        ),
                      ),
                      //Magic Potions
                      FloatingActionButton.large(
                        //backgroundColor: theme.colorScheme.onBackground,
                        foregroundColor:
                            theme2.floatingActionButtonTheme.foregroundColor,
                        shape: const ContinuousRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                        onPressed: () {
                           Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Potions()),
                          );
                        },
                        child: Column(
                          children: [
                            Expanded(
                              flex: 8,
                              child: Container(
                                decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                    ),
                                    image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: AssetImage(
                                            "assets/images/magicpotion.jpg"))),
                              ),
                            ),
                            const Expanded(
                                flex: 1, child: Text("Magic Potions"))
                          ],
                        ),
                      ),
                      //Magic Artifacts
                      FloatingActionButton.large(
                        //backgroundColor: theme.colorScheme.onBackground,
                        foregroundColor:
                            theme2.floatingActionButtonTheme.foregroundColor,
                        shape: const ContinuousRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                        onPressed: () {
                           Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>const Artifacts()),
                          );
                        },
                        child: Column(
                          children: [
                            Expanded(
                              flex: 8,
                              child: Container(
                                decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                    ),
                                    image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: AssetImage(
                                            "assets/images/artifacts.jpg"))),
                              ),
                            ),
                            const Expanded(
                                flex: 1, child: Text("Magic Artifacts"))
                          ],
                        ),
                      ),
                      //Hoqwarts Houses
                      FloatingActionButton.large(
                        //backgroundColor: theme.colorScheme.onBackground,
                        foregroundColor:
                            theme2.floatingActionButtonTheme.foregroundColor,
                        shape: const ContinuousRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                        onPressed: () {
                           Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Halls()),
                          );
                        },
                        child: Column(
                          children: [
                            Expanded(
                              flex: 8,
                              child: Container(
                                decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                    ),
                                    image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: AssetImage(
                                            "assets/images/houselogo.jpg"))),
                              ),
                            ),
                            const Expanded(
                                flex: 1, child: Text("Hogwarts Houses"))
                          ],
                        ),
                      ),
                    ]),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
