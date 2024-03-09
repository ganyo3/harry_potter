// import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:harry_potter/login_page.dart';
// import 'potterthemes.dart';

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
    // var theme = harryPotterTheme();
    return Scaffold(
      // theme: theme,
      body: DecoratedBox(
        decoration: const BoxDecoration(
            // Image set to background of the body
            image: DecorationImage(
                image: AssetImage("assets/images/hogwarts.jpg"),
                fit: BoxFit.cover),
          ),
        child: SafeArea(
          child: Center(
              //A Welcome Text
              child: Stack(
                  // textDirection:,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.8,
                        vertical: size.width * 0.3,
                      ),
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/images/harrypotter.jpg",
                          ),
                          opacity: 0.7,
                        ),
                      ),
                    ),
                    Positioned(
                      top: size.height * 0.35,
                      child: const Text(
                        "Welcome To The World Of🔮",
                        style: TextStyle(
                          color: Colors.white60,
                          fontSize: 20,
                        ),
                      ),
                    ),
        
                    //Entry Button
                    Positioned(
                      bottom: size.height * 0.0,
                      child: FloatingActionButton.extended(
                        backgroundColor: Colors.black12,
                        foregroundColor: Colors.grey,
                        extendedTextStyle: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                        extendedPadding:
                            EdgeInsets.symmetric(horizontal: size.width * 0.35),
                        shape: LinearBorder.none,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const LogIn())
                          );
                        },
                        label: const Text("TAKE A TOUR"),
                      ),
                    ),
                  ]),
            ),
        ),
      ),
    );
  }
}
