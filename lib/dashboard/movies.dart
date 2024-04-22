import 'package:flutter/material.dart';
import 'package:harry_potter/Potter_Details/moviedetail.dart';
import 'package:harry_potter/potterthemes.dart';
// import '../potterapi-main/api/index.js';

class Movies extends StatefulWidget {
  @override
  const Movies({super.key});

  @override
  State<StatefulWidget> createState() {
    return MoviesState();
  }
}

class MoviesState extends State<Movies> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var theme = PotterTheme.dark();
    var theme2 = PotterTheme.light();
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.appBarTheme.backgroundColor,
        foregroundColor: theme.appBarTheme.foregroundColor,
        title: Text(
          "Movie Collection",
          style: theme.textTheme.titleLarge,
        ),
        centerTitle: true,
      ),
      body: DecoratedBox(
        decoration: const BoxDecoration(
          // Image set to background of the body
          image: DecorationImage(
              image: AssetImage("assets/images/potter-portrait-display.jpg"),
              fit: BoxFit.fill),
        ),
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(children: [
                Column(
                  children: [
                    SizedBox(
                      height: size.height * 01,
                      child: GridView(
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 7,
                            mainAxisSpacing: 7,
                            childAspectRatio: .66,
                          ),
                          padding: EdgeInsets.symmetric(
                              vertical: size.height * .02,
                              horizontal: size.width * .02),
                          children: [
                            //Movie Collections
                            FloatingActionButton.large(
                              backgroundColor: theme.colorScheme.onBackground,
                              foregroundColor: theme2
                                  .floatingActionButtonTheme.foregroundColor,
                              shape: const ContinuousRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(25))),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const MovieDetail()),
                                );
                              },
                              child: Column(
                                children: [
                                  Expanded(
                                    flex: 5,
                                    child: Container(
                                      decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(10),
                                            topRight: Radius.circular(10),
                                          ),
                                          image: DecorationImage(
                                              fit: BoxFit.fill,
                                              image: AssetImage(
                                                  "assets/images/product1.jpg"))),
                                    ),
                                  ),
                                  const Expanded(
                                      flex: 1, child: Text("Movie Name"))
                                ],
                              ),
                            ),
                            //Character Collections
                            FloatingActionButton.large(
                              backgroundColor: theme.colorScheme.onBackground,
                              foregroundColor: theme2
                                  .floatingActionButtonTheme.foregroundColor,
                              shape: const ContinuousRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(25))),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const MovieDetail()));
                              },
                              child: Column(
                                children: [
                                  Expanded(
                                    flex: 5,
                                    child: Container(
                                      decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(10),
                                            topRight: Radius.circular(10),
                                          ),
                                          image: DecorationImage(
                                              fit: BoxFit.fill,
                                              image: AssetImage(
                                                  "assets/images/product1.jpg"))),
                                    ),
                                  ),
                                  const Expanded(
                                      flex: 1, child: Text("Movie Name"))
                                ],
                              ),
                            ),
                            //Character Collections
                            FloatingActionButton.large(
                              backgroundColor: theme.colorScheme.onBackground,
                              foregroundColor: theme2
                                  .floatingActionButtonTheme.foregroundColor,
                              shape: const ContinuousRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(25))),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const MovieDetail()));
                              },
                              child: Column(
                                children: [
                                  Expanded(
                                    flex: 5,
                                    child: Container(
                                      decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(10),
                                            topRight: Radius.circular(10),
                                          ),
                                          image: DecorationImage(
                                              fit: BoxFit.fill,
                                              image: AssetImage(
                                                  "assets/images/product1.jpg"))),
                                    ),
                                  ),
                                  const Expanded(
                                      flex: 1, child: Text("Movie Name"))
                                ],
                              ),
                            ),
                            //Wand Collections
                            FloatingActionButton.large(
                              backgroundColor: theme.colorScheme.onBackground,
                              foregroundColor: theme2
                                  .floatingActionButtonTheme.foregroundColor,
                              shape: const ContinuousRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(25))),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const MovieDetail()));
                              },
                              child: Column(
                                children: [
                                  Expanded(
                                    flex: 5,
                                    child: Container(
                                      decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(10),
                                            topRight: Radius.circular(10),
                                          ),
                                          image: DecorationImage(
                                              fit: BoxFit.fill,
                                              image: AssetImage(
                                                  "assets/images/product1.jpg"))),
                                    ),
                                  ),
                                  const Expanded(
                                      flex: 1, child: Text("Movie Name"))
                                ],
                              ),
                            ),
                            //Magic Spells
                            FloatingActionButton.large(
                              backgroundColor: theme.colorScheme.onBackground,
                              foregroundColor: theme2
                                  .floatingActionButtonTheme.foregroundColor,
                              shape: const ContinuousRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(25))),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const MovieDetail()));
                              },
                              child: Column(
                                children: [
                                  Expanded(
                                    flex: 5,
                                    child: Container(
                                      decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(10),
                                            topRight: Radius.circular(10),
                                          ),
                                          image: DecorationImage(
                                              fit: BoxFit.fill,
                                              image: AssetImage(
                                                  "assets/images/product1.jpg"))),
                                    ),
                                  ),
                                  const Expanded(
                                      flex: 1, child: Text("Movie Name"))
                                ],
                              ),
                            ),
                            //Magic Potions
                            FloatingActionButton.large(
                              backgroundColor: theme.colorScheme.onBackground,
                              foregroundColor: theme2
                                  .floatingActionButtonTheme.foregroundColor,
                              shape: const ContinuousRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(25))),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const MovieDetail()));
                              },
                              child: Column(
                                children: [
                                  Expanded(
                                    flex: 5,
                                    child: Container(
                                      decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(10),
                                            topRight: Radius.circular(10),
                                          ),
                                          image: DecorationImage(
                                              fit: BoxFit.fill,
                                              image: AssetImage(
                                                  "assets/images/product1.jpg"))),
                                    ),
                                  ),
                                  const Expanded(
                                      flex: 1, child: Text("Movie Name"))
                                ],
                              ),
                            ),
                            //Magic Artifacts
                            FloatingActionButton.large(
                              backgroundColor: theme.colorScheme.onBackground,
                              foregroundColor: theme2
                                  .floatingActionButtonTheme.foregroundColor,
                              shape: const ContinuousRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(25))),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const MovieDetail()));
                              },
                              child: Column(
                                children: [
                                  Expanded(
                                    flex: 5,
                                    child: Container(
                                      decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(10),
                                            topRight: Radius.circular(10),
                                          ),
                                          image: DecorationImage(
                                              fit: BoxFit.fill,
                                              image: AssetImage(
                                                  "assets/images/product1.jpg"))),
                                    ),
                                  ),
                                  const Expanded(
                                      flex: 1, child: Text("Movie Name"))
                                ],
                              ),
                            ),
                            //Hoqwarts Houses
                            FloatingActionButton.large(
                              backgroundColor: theme.colorScheme.onBackground,
                              foregroundColor: theme2
                                  .floatingActionButtonTheme.foregroundColor,
                              shape: const ContinuousRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(25))),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const MovieDetail()));
                              },
                              child: Column(
                                children: [
                                  Expanded(
                                    flex: 5,
                                    child: Container(
                                      decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(10),
                                            topRight: Radius.circular(10),
                                          ),
                                          image: DecorationImage(
                                              fit: BoxFit.fill,
                                              image: AssetImage(
                                                  "assets/images/product1.jpg"))),
                                    ),
                                  ),
                                  const Expanded(
                                      flex: 1, child: Text("Movie Name"))
                                ],
                              ),
                            ),
                          ]),
                    ),
                  ],
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
