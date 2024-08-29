import 'package:flutter/material.dart';
import '../theme_storage/potterthemes.dart';

class SportTools extends StatefulWidget {
  @override
  const SportTools({super.key});

  @override
  State<StatefulWidget> createState() {
    return SportToolsState();
  }
}

class SportToolsState extends State<SportTools> {
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
          "Artifacts Collection",
          style: theme.textTheme.titleLarge,
        ),
        centerTitle: true,
      ),
        body: DecoratedBox(
          decoration: const BoxDecoration(
            // Image set to background of the body
            image: DecorationImage(
                image: AssetImage("assets/images/harry-potter.jpg"),
                fit: BoxFit.fill),
          ),
          child: SafeArea(
            child: SingleChildScrollView(
              child: Center(
                  //A Welcome Text
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
                                  color: theme.colorScheme.onSurface,
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
                                  color: theme.colorScheme.onSurface,
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
                                  color: theme.colorScheme.onSurface,
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
                                  color: theme.colorScheme.onSurface,
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
                                  color: theme.colorScheme.onSurface,
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
                                  color: theme.colorScheme.onSurface,
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
                                  color: theme.colorScheme.onSurface,
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
                                  color: theme.colorScheme.onSurface,
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
              )),
            ),
          ),
        ),
    );
  }
}
