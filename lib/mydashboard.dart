import 'package:flutter/material.dart';
import 'package:harry_potter/dashboard/myprofile.dart';
import 'package:harry_potter/dashboard/tourlink.dart';
import 'package:harry_potter/mygallery.dart';
// import 'potterthemes.dart';

class DashBoard extends StatefulWidget {
  @override
  const DashBoard({super.key});

  @override
  State<StatefulWidget> createState() {
    return DashBoardState();
  }
}

class DashBoardState extends State<DashBoard> {
   int _selectedIndex = 0;
  static List<Widget> pages = <Widget>[
    const TourLink(),
     const Gallery(),
     const MyProfile(),
   ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size;
    // var theme = PotterTheme.dark();
    // var theme2 = PotterTheme.light();
    // var theme = harryPotterTheme();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
          child: pages[_selectedIndex]),

        bottomNavigationBar: BottomNavigationBar(
                   backgroundColor: Colors.black,
            currentIndex: _selectedIndex,
              selectedItemColor: Colors.amber,
              unselectedItemColor: Colors.white,
              unselectedFontSize: 10,
              onTap: _onItemTapped,
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
                ],)
    );
  }
}
