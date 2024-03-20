import 'package:flutter/material.dart';
import 'package:harry_potter/potterthemes.dart';

class Potions extends StatefulWidget {
  @override
  const Potions({super.key});

  @override
  State<StatefulWidget> createState() {
    return PotionsState();
  }
}

class PotionsState extends State<Potions> {
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
          "Potion Collection",
          style: theme.textTheme.titleLarge,
        ),
        centerTitle: true,
      ),
      body: DecoratedBox(
        decoration: const BoxDecoration(
          // Image set to background of the body
          image: DecorationImage(
              image: AssetImage("assets/images/magicpotion.jpg"),
              fit: BoxFit.fill),
        ),
        child: SafeArea(
          child: Center(
            //A Welcome Text
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: size.width * 0.15,
                      vertical: size.height * 0.02,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      ),
                      color: theme.colorScheme.onBackground,
                    ),
                    child: Text("Magic Potions",
                        style: theme.textTheme.displayMedium),
                  ),
                  SizedBox(
                    height: size.height * 0.7,
                    child: GridView(
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 7,
                          mainAxisSpacing: size.height * 0.025,
                          childAspectRatio: .66,
                        ),
                        padding: EdgeInsets.symmetric(
                            vertical: size.height * .02,
                            horizontal: size.width * .02),
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: theme.colorScheme.onBackground,
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(50),
                                topRight: Radius.circular(50),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                            ),
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 4,
                                  child: Container(
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(50),
                                          topRight: Radius.circular(50),
                                        ),
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/product1.jpg'),
                                          fit: BoxFit.fill,
                                        )),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Text(
                                    'Details',
                                    style: theme.textTheme.displaySmall,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: theme.colorScheme.onBackground,
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(50),
                                topRight: Radius.circular(50),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                            ),
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 4,
                                  child: Container(
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(50),
                                          topRight: Radius.circular(50),
                                        ),
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/product1.jpg'),
                                          fit: BoxFit.fill,
                                        )),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Text(
                                    'Details',
                                    style: theme.textTheme.displaySmall,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: theme.colorScheme.onBackground,
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(50),
                                topRight: Radius.circular(50),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                            ),
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 4,
                                  child: Container(
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(50),
                                          topRight: Radius.circular(50),
                                        ),
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/product1.jpg'),
                                          fit: BoxFit.fill,
                                        )),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Text(
                                    'Details',
                                    style: theme.textTheme.displaySmall,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: theme.colorScheme.onBackground,
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(50),
                                topRight: Radius.circular(50),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                            ),
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 4,
                                  child: Container(
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(50),
                                          topRight: Radius.circular(50),
                                        ),
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/product1.jpg'),
                                          fit: BoxFit.fill,
                                        )),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Text(
                                    'Details',
                                    style: theme.textTheme.displaySmall,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ]),
                  ),
                  SizedBox(
                    height: size.height * 0.7,
                    child: GridView(
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 7,
                          mainAxisSpacing: size.height * 0.025,
                          childAspectRatio: .66,
                        ),
                        padding: EdgeInsets.symmetric(
                            vertical: size.height * .02,
                            horizontal: size.width * .02),
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: theme.colorScheme.onBackground,
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(50),
                                topRight: Radius.circular(50),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                            ),
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 4,
                                  child: Container(
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(50),
                                          topRight: Radius.circular(50),
                                        ),
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/product1.jpg'),
                                          fit: BoxFit.fill,
                                        )),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Text(
                                    'Name',
                                    style: theme.textTheme.displaySmall,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: theme.colorScheme.onBackground,
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(50),
                                topRight: Radius.circular(50),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                            ),
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 4,
                                  child: Container(
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(50),
                                          topRight: Radius.circular(50),
                                        ),
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/product1.jpg'),
                                          fit: BoxFit.fill,
                                        )),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Text(
                                    'Name',
                                    style: theme.textTheme.displaySmall,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: theme.colorScheme.onBackground,
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(50),
                                topRight: Radius.circular(50),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                            ),
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 4,
                                  child: Container(
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(50),
                                          topRight: Radius.circular(50),
                                        ),
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/product1.jpg'),
                                          fit: BoxFit.fill,
                                        )),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Text(
                                    'Name',
                                    style: theme.textTheme.displaySmall,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: theme.colorScheme.onBackground,
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(50),
                                topRight: Radius.circular(50),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                            ),
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 4,
                                  child: Container(
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(50),
                                          topRight: Radius.circular(50),
                                        ),
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/product1.jpg'),
                                          fit: BoxFit.fill,
                                        )),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Text(
                                    'Name',
                                    style: theme.textTheme.displaySmall,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ]),
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
