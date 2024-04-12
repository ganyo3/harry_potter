import 'package:flutter/material.dart';
import 'package:harry_potter/potterthemes.dart';

class Halls extends StatefulWidget {
  @override
  const Halls({super.key});

  @override
  State<StatefulWidget> createState() {
    return HallsState();
  }
}

class HallsState extends State<Halls> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var theme = PotterTheme.dark();
     var theme2 = PotterTheme.light();
    // TODO: implement build
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: theme.appBarTheme.backgroundColor,
        foregroundColor: theme.appBarTheme.foregroundColor,
        title: Text(
          "Hogwarts Halls",
          style: theme.textTheme.titleLarge,
        ),
        centerTitle: true,
      ),
      body: DecoratedBox(
        decoration: const BoxDecoration(
          // Image set to background of the body
          image: DecorationImage(
              image: AssetImage("assets/images/houselogo.jpg"),
              fit: BoxFit.fill),
        ),
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child:Column(
                children: [
                  
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: size.width*0.02,
                      vertical: size.height*0.02,
                    ),
                    decoration: BoxDecoration(
                        color: theme2.colorScheme.onBackground,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        Column(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                              Container(
                                padding:EdgeInsets.symmetric(
                                  vertical:size.height*0.15,
                                  horizontal: size.width*0.45,
                                  ),
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10)
                                  ),
                                    image: DecorationImage(image: AssetImage(
                                      'assets/images/product1.jpg',),
                                      fit: BoxFit.fill
                                      )),
                            ),
                              Padding(
                                 padding:EdgeInsets.symmetric(
                                  vertical:size.height*0.05,
                                  // horizontal: size.width*0.45,
                                  ),
                                child: Text(
                                  'Hall Details',
                                  style: theme.textTheme.displaySmall,
                                ),
                              ),
                            ]),
                          ],
                        ),
                      ],
                    )),
            
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: size.width*0.02,
                      vertical: size.height*0.02,
                    ),
                    decoration: BoxDecoration(
                        color: theme2.colorScheme.onBackground,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        Column(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                              Container(
                                padding:EdgeInsets.symmetric(
                                  vertical:size.height*0.15,
                                  horizontal: size.width*0.45,
                                  ),
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10)
                                  ),
                                    image: DecorationImage(image: AssetImage(
                                      'assets/images/product1.jpg',),
                                      fit: BoxFit.fill
                                      )),
                            ),
                              Padding(
                                 padding:EdgeInsets.symmetric(
                                  vertical:size.height*0.05,
                                  // horizontal: size.width*0.45,
                                  ),
                                child: Text(
                                  'Hall Details',
                                  style: theme.textTheme.displaySmall,
                                ),
                              ),
                            ]),
                          ],
                        ),
                      ],
                    )),
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: size.width*0.02,
                      vertical: size.height*0.02,
                    ),
                    decoration: BoxDecoration(
                        color: theme2.colorScheme.onBackground,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        Column(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                              Container(
                                padding:EdgeInsets.symmetric(
                                  vertical:size.height*0.15,
                                  horizontal: size.width*0.45,
                                  ),
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10)
                                  ),
                                    image: DecorationImage(image: AssetImage(
                                      'assets/images/product1.jpg',),
                                      fit: BoxFit.fill
                                      )),
                            ),
                              Padding(
                                 padding:EdgeInsets.symmetric(
                                  vertical:size.height*0.05,
                                  // horizontal: size.width*0.45,
                                  ),
                                child: Text(
                                  'Hall Details',
                                  style: theme.textTheme.displaySmall,
                                ),
                              ),
                            ]),
                          ],
                        ),
                      ],
                    )),
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: size.width*0.02,
                      vertical: size.height*0.02,
                    ),
                    decoration: BoxDecoration(
                        color: theme2.colorScheme.onBackground,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        Column(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                              Container(
                                padding:EdgeInsets.symmetric(
                                  vertical:size.height*0.15,
                                  horizontal: size.width*0.45,
                                  ),
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10)
                                  ),
                                    image: DecorationImage(image: AssetImage(
                                      'assets/images/product1.jpg',),
                                      fit: BoxFit.fill
                                      )),
                            ),
                              Padding(
                                 padding:EdgeInsets.symmetric(
                                  vertical:size.height*0.05,
                                  // horizontal: size.width*0.45,
                                  ),
                                child: Text(
                                  'Hall Details',
                                  style: theme.textTheme.displaySmall,
                                ),
                              ),
                            ]),
                          ],
                        ),
                      ],
                    )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
