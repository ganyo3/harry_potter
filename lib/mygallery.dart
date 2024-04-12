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
      resizeToAvoidBottomInset: true,
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
//  bottomNavigationBar: BottomNavigationBar(
//         backgroundColor: const Color.fromARGB(255, 100, 100, 107),
//         type: BottomNavigationBarType.fixed,
//         // 5
//         selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
//         // TODO: Set selected tab bar
//         currentIndex: _selectedIndex,
//         onTap: _onItemTapped,
//         // 6
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(
//               Icons.home,
//               color: Colors.white,
//             ),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(
//               Icons.search,
//               color: Colors.white,
//             ),
//             label: 'Search',
//           ),
//           BottomNavigationBarItem(
//             label: 'Official Brand',
//             icon: Icon(
//               Icons.stars_rounded,
//               color: Colors.white,
//             ),
//           ),
//           BottomNavigationBarItem(
//             label: 'Cart',
//             icon: Icon(
//               Icons.shopping_cart,
//               color: Colors.white,
//             ),
//           ),
//           BottomNavigationBarItem(
//             label: 'Account',
//             icon: Icon(
//               Icons.person,
//               color: Colors.white,
//             ),
//           ),
//         ],
//       ),