import 'package:flutter/material.dart';
import 'package:harry_potter/potterthemes.dart';

class Character extends StatefulWidget {
  @override
  const Character({super.key});

  @override
  State<StatefulWidget> createState() {
    return CharacterState();
  }
}

class CharacterState extends State<Character> {
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
          "Character Information",
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
                      child: Text(
                        "Authorities",
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
                        "Students",
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
                                              )
                                              ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 2,
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
                                              )
                                              ),
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
