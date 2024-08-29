
import 'package:flutter/material.dart';
// import 'local_path_storage.dart';
import '../theme_storage/potterthemes.dart';
import 'screens/mydashboard.dart';
import 'screens/signup_signin/login_page.dart';

class HomePage extends StatefulWidget {
  @override
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var theme = PotterTheme.dark();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      home: Scaffold(
        resizeToAvoidBottomInset: true,
        body: DecoratedBox(
          decoration: const BoxDecoration(
            // Image set to background of the body
            image: DecorationImage(
                image: AssetImage("assets/images/hogwarts.jpg"),
                fit: BoxFit.fill),
          ),
          child: SafeArea(
            child: Center(
              //A Welcome Text
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: size.height * 0.25),
                    child: Stack(
                        // textDirection:,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: size.width * 0.01),
                            child: Container(
                              height: size.height * 0.25,
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(
                                    "assets/images/harrypotter.jpg",
                                  ),
                                  opacity: 0.7,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: size.width * 0.045,
                                vertical: size.height * 0.01,
                              ),
                              child: Text(
                                "Welcome To The World Of🔮",
                                style: theme.textTheme.displayLarge,
                              ),
                            ),
                          ),

                          //Entry Button
                        ]),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: size.width * 0.01, top: size.height * 0.38),
                    child: Row(
                      children: [
                        FloatingActionButton.extended(
                          backgroundColor:
                              const Color.fromARGB(120, 85, 245, 93),
                          foregroundColor: Colors.white70,
                          extendedTextStyle: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                          extendedPadding: EdgeInsets.symmetric(
                              horizontal: size.width * 0.1),
                          shape: const ContinuousRectangleBorder(
                              borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                          )),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>const DashBoard()));
                          },
                          label: const Text("TAKE A TOUR"),
                        ),
                        SizedBox(
                          width: size.width * 0.01,
                        ),
                        FloatingActionButton.extended(
                          backgroundColor:
                              const Color.fromARGB(120, 85, 245, 93),
                          foregroundColor: Colors.white70,
                          extendedTextStyle: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                          extendedPadding: EdgeInsets.symmetric(
                              horizontal: size.width * 0.155),
                          shape: const ContinuousRectangleBorder(
                              borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                          )),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LogIn()));
                          },
                          label: const Text("Log In"),
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
