
import 'package:flutter/material.dart';
import 'package:harry_potter/screens/signup_signin/login_page.dart';

import 'theme_storage/potterthemes.dart';
// import 'local_path_storage.dart';import '../theme_storage/potterthemes.dart';

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
            child: SingleChildScrollView(
              physics: const NeverScrollableScrollPhysics(),
              child: Center(
                //A Welcome Text
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: size.height*0.4
                  ),
                  child: Column(
                    children: [
                      const Text("Welcome To"),
                      const Text("HOGWARTS",
                      style: TextStyle(fontSize: 35),
                      ),

                    SizedBox(
                      height: size.height*0.36,
                    ),

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
                                  builder: (context) =>const LogIn()));
                        },
                        label: const Text("TAKE A TOUR"),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
