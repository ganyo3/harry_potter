import 'package:flutter/material.dart';
import 'package:harry_potter/potterthemes.dart';

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
    // var theme2 = PotterTheme.light();
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.appBarTheme.backgroundColor,
        foregroundColor: theme.appBarTheme.foregroundColor,
        title: Text(
          "Character Collection",
          style: theme.textTheme.titleLarge,
        ),
        centerTitle: true,
      ),
      body: DecoratedBox(
        decoration: const BoxDecoration(
          // Image set to background of the body
          image: DecorationImage(
              image: AssetImage("assets/images/potter-portrait-display.jpg"),
              opacity: 0.8,
              fit: BoxFit.fill),
        ),
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                  children: [
                     //Regular students
                SizedBox(
                        height: size.height*01.4,
                        child: GridView(
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate:
                                 SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 7,
                              mainAxisSpacing: size.height*0.02,
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
                ),
            ),
          ),
        ),
      ),
    );
  }
}
