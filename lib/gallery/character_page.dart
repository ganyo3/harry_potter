import 'package:flutter/material.dart';
import '../potterthemes.dart';

class CharacterPage extends StatefulWidget {
  @override
  const CharacterPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return CharacterPageState();
  }
}

class CharacterPageState extends State<CharacterPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var theme = PotterTheme.dark();
    var theme2 = PotterTheme.light();
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // appBar: AppBar(
        //   backgroundColor: theme.appBarTheme.backgroundColor,
        //   foregroundColor: theme.appBarTheme.foregroundColor,
        //   title: Text(
        //     "Characters",
        //     style: theme.textTheme.titleLarge,
        //   ),
        //   centerTitle: true,
        // ),
        body:DecoratedBox(
          decoration: const BoxDecoration(
            // Image set to background of the body
            image: DecorationImage(
                image: AssetImage("assets/images/harry-potter.jpg"),
                fit: BoxFit.fill),
          ),
          child: SafeArea(
            child: SingleChildScrollView(
              child: Center(
                //Listing Characters in their ranks
                child:  Column(
                  children: [
                   Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: size.width * 0.06, 
                      vertical: size.height * 0.02, 
                      ),
                    decoration: BoxDecoration(
                         borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(50),
                                bottomRight: Radius.circular(50),
                              ),
                      color: theme.colorScheme.onBackground,
                    ),
                    child: Text(
                      "Character Gallery",
                      style: theme.textTheme.displayMedium
                    ),
                  ),
                    SizedBox(
                        height: size.height * 0.35,
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
                              Container(
                                decoration: BoxDecoration(
                                  color: theme.colorScheme.onBackground,
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(50),
                                              topRight: Radius.circular(50),
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Expanded(
                                      flex: 8,
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
                                      flex: 1,
                                      child: Text(
                                        'Head Master',
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
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Expanded(
                                      flex: 8,
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
                                      flex: 1,
                                      child: Text(
                                        'Assistant',
                                        style: theme.textTheme.displaySmall,
                                      ),
                                    )
                                  ],
                                ),
                              ),                        
                            ]),
                      ),
                      //Listing Teachers
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
                    child: Text(
                      "Teachers",
                      style: theme.textTheme.displayMedium
                    ),
                  ),
                    SizedBox(
                        height: size.height * 0.7,
                        child: GridView(
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 7,
                               mainAxisSpacing: size.height*0.025,
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
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Expanded(
                                      flex: 8,
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
                                      flex: 1,
                                      child: Text(
                                        'Spells',
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
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Expanded(
                                      flex: 8,
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
                                      flex: 1,
                                      child: Text(
                                        'Magic Potion',
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
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Expanded(
                                      flex: 8,
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
                                      flex: 1,
                                      child: Text(
                                        'Margic Artifacts',
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
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Expanded(
                                      flex: 8,
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
                                      flex: 1,
                                      child: Text(
                                        'Combat and Flight',
                                        style: theme.textTheme.displaySmall,
                                      ),
                                    )
                                  ],
                                ),
                              ),                        
                            ]),
                      ),
                      //House Prefects
                   Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: size.width * 0.07, 
                      vertical: size.height * 0.02, 
                      ),
                    decoration: BoxDecoration(
                         borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(50),
                                bottomRight: Radius.circular(50),
                              ),
                      color: theme.colorScheme.onBackground,
                    ),
                    child: Text(
                      "House Prefects",
                      style: theme.textTheme.displayMedium
                    ),
                  ),
                    SizedBox(
                        height: size.height * 0.7,
                        child: GridView(
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 7,
                               mainAxisSpacing: size.height*0.025,
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
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Expanded(
                                      flex: 8,
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
                                            )
                                            ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Text(
                                        'Gryffindor',
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
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Expanded(
                                      flex: 8,
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
                                      flex: 1,
                                      child: Text(
                                        'Slytherin',
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
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Expanded(
                                      flex: 8,
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
                                      flex: 1,
                                      child: Text(
                                        'Ravenclaw',
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
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Expanded(
                                      flex: 8,
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
                                      flex: 1,
                                      child: Text(
                                        'Hufflepuff',
                                        style: theme.textTheme.displaySmall,
                                      ),
                                    )
                                  ],
                                ),
                              ),                        
                            ]),
                      ),
                      //Regular students
                   Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: size.width * 0.06, 
                      vertical: size.height * 0.02, 
                      ),
                    decoration: BoxDecoration(
                         borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(50),
                                bottomRight: Radius.circular(50),
                              ),
                      color: theme.colorScheme.onBackground,
                    ),
                    child: Text(
                      "Other Students",
                      style: theme.textTheme.displayMedium
                    ),
                  ),
                    SizedBox(
                        height: size.height * 0.7,
                        child: GridView(
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 7,
                              mainAxisSpacing: size.height*0.025,
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
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Expanded(
                                      flex: 8,
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
                                            )
                                            ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
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
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Expanded(
                                      flex: 8,
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
                                      flex: 1,
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
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Expanded(
                                      flex: 8,
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
                                      flex: 1,
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
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Expanded(
                                      flex: 8,
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
                                      flex: 1,
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
                )
              ),
            ),
          ),
        ),
      ),
    );
  }
}
