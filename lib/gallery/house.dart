import 'package:flutter/material.dart';
import '../theme_storage/potterthemes.dart';

class House extends StatefulWidget {
  @override
  const House({super.key});

  @override
  State<StatefulWidget> createState() {
    return HouseState();
  }
}

class HouseState extends State<House> {
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
          "Hogwarts Halls",
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
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: size.height * 0.005,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: size.width * 0.02),
                    padding: EdgeInsets.symmetric(
                      vertical: size.height * 0.15,
                    ),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/images/gryffindor.jpg"),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.005,
                  ),
                  SizedBox(
                    height: size.height * 0.005,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: size.width * 0.02),
                    padding: EdgeInsets.symmetric(
                      vertical: size.height * 0.15,
                    ),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/images/product1.jpg"),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.015,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: size.width * 0.02),
                    padding: EdgeInsets.symmetric(
                      vertical: size.height * 0.15,
                    ),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/images/product1.jpg"),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.015,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: size.width * 0.02),
                    padding: EdgeInsets.symmetric(
                      vertical: size.height * 0.15,
                    ),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/images/product1.jpg"),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.015,
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
