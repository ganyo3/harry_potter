import 'package:flutter/material.dart';
import 'mydashboard.dart';
import 'potterthemes.dart';
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
                        child: Text(
                          "Welcome To The World Of🔮",
                          style: theme.textTheme.displayLarge,
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
                              MaterialPageRoute(builder: (context) => const DashBoard())
                            );
                          },
                          label: const Text("TAKE A TOUR"),
                        ),
                      ),
                    ]),
              ),
          ),
        ),
      ),
    );
  }
}
