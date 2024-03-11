import 'package:flutter/material.dart';
import 'package:harry_potter/potterthemes.dart';

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
              fit: BoxFit.cover),
        ),
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 230, 227, 227),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Row(children: [
                            Container(
                              padding:EdgeInsets.only(
                                top:size.height*0.3,
                                right: size.width*0.45,
                                ),
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(10),
                                    topLeft: Radius.circular(10)
                                ),
                                  image: DecorationImage(image: AssetImage(
                                    'assets/images/product1.jpg',),
                                    fit: BoxFit.cover
                                    )),
                          ),
                            Padding(
                              padding: EdgeInsets.only(
                                bottom: size.height * 0.075,
                                left: size.height * 0.01,
                              ),
                              child: const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Fashion 2Pcs Traditional \nSimple Sneaker Gift Tai-\nGolden',
                                    ),
                                    Text(
                                      '\$50.00',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ]),
                            ),
                          ]),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: size.width * 0.25,
                          ),
                        ],
                      ),
                    ],
                  )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
