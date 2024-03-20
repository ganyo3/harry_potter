import 'package:flutter/material.dart';
import 'package:harry_potter/gallery/character_page.dart';
import 'package:harry_potter/gallery/wand_display.dart';
import 'package:harry_potter/gallery/house.dart';
import 'package:harry_potter/gallery/sportstool.dart';
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
  int _selectedIndex = 0;
  static List<Widget> pages = <Widget>[
     const CharacterPage(),
     const MagicWand(),
     const House(),
     const SportTools(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size;
    var theme = PotterTheme.dark();
    var theme2 = PotterTheme.light();
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.appBarTheme.backgroundColor,
        foregroundColor: theme.appBarTheme.foregroundColor,
        title: Text(
          "Hogwarts Gallery",
          style: theme2.textTheme.displayLarge,
        ),
        centerTitle: true,
      ),
      body:pages[_selectedIndex],
     
            bottomNavigationBar: BottomNavigationBar(
              backgroundColor: Colors.black,
            currentIndex: _selectedIndex,
              selectedItemColor: Colors.amber,
              unselectedItemColor: Colors.black,
              onTap: _onItemTapped,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: "Characters",
                ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.brush), 
                    label: "Wands"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.castle), 
                label: "House"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.sports_cricket_sharp), 
                label: "Sports Tools")
              ],
            ),
    );
  }
}
