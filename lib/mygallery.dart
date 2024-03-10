import 'package:flutter/material.dart';
import 'potterthemes.dart';

class Gallery extends StatefulWidget {
  @override
  const Gallery({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
     return GalleryState();
  }
}

class GalleryState extends State<Gallery> {
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
          title: Text("Hogwarts Gallery",
          style: theme2.textTheme.displayLarge,
          ),
          centerTitle: true,
        ),
        body: DecoratedBox(
          decoration: const BoxDecoration(
              // Image set to background of the body
              image: DecorationImage(
                  image: AssetImage("assets/images/harry-potter.jpg"),
                  fit: BoxFit.cover),
            ),
          child: SafeArea(
            child: Center(
                //A Welcome Text
               child: Column(
                children: [
                  BottomNavigationBar(
                    selectedItemColor: Colors.amber,
                    onTap: (context){},
                    items: const [
                      BottomNavigationBarItem(
                        icon:Icon(Icons.person),
                        label: "Characters"
                        ),
                      BottomNavigationBarItem(
                        icon:Icon(Icons.castle),
                        label: "House"
                        ),
                      BottomNavigationBarItem(
                        icon:Icon(Icons.flight),
                        label: "Brooms"
                        )
                    ],
                    ),
                ],
               ),
              ),
          ),
        ),
    );
  }
}
