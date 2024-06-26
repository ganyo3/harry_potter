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
    var theme2 = PotterTheme.light();
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.appBarTheme.backgroundColor,
        foregroundColor: theme.appBarTheme.foregroundColor,
        title: Text(
          "Characters",
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

                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: size.width * 0.02,
                      vertical: size.height * 0.01,
                    ),
                    decoration: BoxDecoration(
                        color: theme2.colorScheme.onBackground,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                            top: size.height * 0.3,
                            right: size.width * 0.45,
                          ),
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  topLeft: Radius.circular(10)),
                              image: DecorationImage(
                                  image: AssetImage(
                                    'assets/images/product1.jpg',
                                  ),
                                  fit: BoxFit.fill)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            bottom: size.height * 0.2,
                            left: size.height * 0.01,
                          ),
                          child: Text(
                            'Potion Detail',
                            style: theme.textTheme.displaySmall,
                          ),
                        ),                    
                      ],
                    ),
                  ),

 Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: size.width * 0.02,
                      vertical: size.height * 0.01,
                    ),
                    decoration: BoxDecoration(
                        color: theme2.colorScheme.onBackground,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                            top: size.height * 0.3,
                            right: size.width * 0.45,
                          ),
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  topLeft: Radius.circular(10)),
                              image: DecorationImage(
                                  image: AssetImage(
                                    'assets/images/product1.jpg',
                                  ),
                                  fit: BoxFit.fill)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            bottom: size.height * 0.2,
                            left: size.height * 0.01,
                          ),
                          child: Text(
                            'Potion Detail',
                            style: theme.textTheme.displaySmall,
                          ),
                        ),                    
                      ],
                    ),
                  ),

                 Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: size.width * 0.02,
                      vertical: size.height * 0.01,
                    ),
                    decoration: BoxDecoration(
                        color: theme2.colorScheme.onBackground,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                            top: size.height * 0.3,
                            right: size.width * 0.45,
                          ),
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  topLeft: Radius.circular(10)),
                              image: DecorationImage(
                                  image: AssetImage(
                                    'assets/images/product1.jpg',
                                  ),
                                  fit: BoxFit.fill)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            bottom: size.height * 0.2,
                            left: size.height * 0.01,
                          ),
                          child: Text(
                            'Potion Detail',
                            style: theme.textTheme.displaySmall,
                          ),
                        ),                    
                      ],
                    ),
                  ),

                 Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: size.width * 0.02,
                      vertical: size.height * 0.01,
                    ),
                    decoration: BoxDecoration(
                        color: theme2.colorScheme.onBackground,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                            top: size.height * 0.3,
                            right: size.width * 0.45,
                          ),
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  topLeft: Radius.circular(10)),
                              image: DecorationImage(
                                  image: AssetImage(
                                    'assets/images/product1.jpg',
                                  ),
                                  fit: BoxFit.fill)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            bottom: size.height * 0.2,
                            left: size.height * 0.01,
                          ),
                          child: Text(
                            'Potion Detail',
                            style: theme.textTheme.displaySmall,
                          ),
                        ),                    
                      ],
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: size.width * 0.02,
                      vertical: size.height * 0.01,
                    ),
                    decoration: BoxDecoration(
                        color: theme2.colorScheme.onBackground,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                            top: size.height * 0.3,
                            right: size.width * 0.45,
                          ),
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  topLeft: Radius.circular(10)),
                              image: DecorationImage(
                                  image: AssetImage(
                                    'assets/images/product1.jpg',
                                  ),
                                  fit: BoxFit.fill)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            bottom: size.height * 0.2,
                            left: size.height * 0.01,
                          ),
                          child: Text(
                            'Potion Detail',
                            style: theme.textTheme.displaySmall,
                          ),
                        ),                    
                      ],
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: size.width * 0.02,
                      vertical: size.height * 0.01,
                    ),
                    decoration: BoxDecoration(
                        color: theme2.colorScheme.onBackground,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                            top: size.height * 0.3,
                            right: size.width * 0.45,
                          ),
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  topLeft: Radius.circular(10)),
                              image: DecorationImage(
                                  image: AssetImage(
                                    'assets/images/product1.jpg',
                                  ),
                                  fit: BoxFit.fill)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            bottom: size.height * 0.2,
                            left: size.height * 0.01,
                          ),
                          child: Text(
                            'Potion Detail',
                            style: theme.textTheme.displaySmall,
                          ),
                        ),                    
                      ],
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: size.width * 0.02,
                      vertical: size.height * 0.01,
                    ),
                    decoration: BoxDecoration(
                        color: theme2.colorScheme.onBackground,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                            top: size.height * 0.3,
                            right: size.width * 0.45,
                          ),
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  topLeft: Radius.circular(10)),
                              image: DecorationImage(
                                  image: AssetImage(
                                    'assets/images/product1.jpg',
                                  ),
                                  fit: BoxFit.fill)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            bottom: size.height * 0.2,
                            left: size.height * 0.01,
                          ),
                          child: Text(
                            'Potion Detail',
                            style: theme.textTheme.displaySmall,
                          ),
                        ),                    
                      ],
                    ),
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
