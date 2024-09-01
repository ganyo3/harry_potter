import 'package:flutter/material.dart';
import 'package:harry_potter/dashboard/myprofile.dart';
import 'package:harry_potter/dashboard/tourlink.dart';
import '../theme_storage/potterthemes.dart';
import 'mygallery.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({
    super.key,
  });
  @override
  State<StatefulWidget> createState() {
    return DashBoardState();
  }
}

class DashBoardState extends State<DashBoard> {
  var _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    theme:PotterTheme.light(), // Apply the light theme
    darkTheme:PotterTheme.dark(), // Apply the dark theme
    themeMode:ThemeMode.system, // Automatically switch between light and dark theme
      home: Scaffold(
         body: IndexedStack(
            index: _selectedIndex,
            children: const [
              TourLink(),
              Gallery(),
              MyProfile(),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            onTap: _onItemTapped,
            backgroundColor: Colors.black,
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.amber,
            unselectedItemColor: Colors.white,
            unselectedFontSize: 10,
            // onTap: _onItemTapped,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.tour_rounded),
                label: "Tour",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.image_rounded),
                label: "Gallery",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Me",
              ),
            ],
          )),
    );
  }
}

//  theme: AppTheme.lightTheme, // Apply the light theme
//       darkTheme: AppTheme.darkTheme, // Apply the dark theme
//       themeMode:
//           ThemeMode.system, // Automatically switch between light and dark theme