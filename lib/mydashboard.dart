import 'package:flutter/material.dart';
import 'package:harry_potter/dashboard/books.dart';
import 'package:harry_potter/dashboard/halls.dart';
import 'package:harry_potter/dashboard/magic_artifacts.dart';
import 'package:harry_potter/dashboard/movies.dart';
import 'package:harry_potter/dashboard/potions.dart';
import 'package:harry_potter/dashboard/spells.dart';
import 'package:harry_potter/dashboard/wands.dart';
import 'package:harry_potter/mygallery.dart';
import 'dashboard/characters.dart';
import 'potterthemes.dart';
import 'index.dart';
import 'login_page.dart';
import 'signup_page.dart';

class DashBoard extends StatefulWidget {
  @override
  const DashBoard({super.key});

  @override
  State<StatefulWidget> createState() {
    return DashBoardState();
  }
}

class DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var theme = PotterTheme.dark();
    var theme2 = PotterTheme.light();
    // var theme = harryPotterTheme();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.appBarTheme.backgroundColor,
        foregroundColor: theme.appBarTheme.foregroundColor,
        title: Text(
          "Welcome To Your DashBoard",
          style: theme2.textTheme.displayMedium,
        ),
        centerTitle: true,
      ),
      // drawer
      drawer: callDrawer(context),
      body: DecoratedBox(
        decoration: const BoxDecoration(
          // Image set to background of the body
          image: DecorationImage(
              image: AssetImage("assets/images/hogwarts-logo.jpg"),
              fit: BoxFit.cover),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Center(
                child: Column(
              children: [
                //The User Info...
                Container(
                  margin: EdgeInsets.symmetric(horizontal: size.width * 0.04),
                  padding: EdgeInsets.symmetric(
                    vertical: size.height * 0.01,
                    horizontal: size.height * 0.01,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: size.width * 0.15,
                        backgroundImage:
                            const AssetImage("assets/images/harry_potter.jpg"),
                      ),
                      SizedBox(
                        width: size.width * 0.02,
                      ),
                      Column(
                        children: [
                          Text("Grand Master Mimzy",
                              style: theme2.textTheme.displayMedium),
                          Text("Sorcerer Supreme",
                              style: theme2.textTheme.displaySmall),
                        ],
                      ),
                    ],
                  ),
                ),
                //Main Body Content...

                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: size.width * 0.04,
                    vertical: size.width * 0.04,
                  ),
                  padding: EdgeInsets.symmetric(
                    vertical: size.height * 0.005,
                    horizontal: size.height * 0.025,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Row(
                    children: [
                      GestureDetector(
                        child: Column(
                          children: [
                            const CircleAvatar(
                              backgroundImage:
                                  AssetImage("assets/images/potter-hd.jpg"),
                            ),
                            Text(
                              "Gallery",
                              style: theme2.textTheme.displaySmall,
                            ),
                          ],
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Gallery()));
                        },
                      ),
                      SizedBox(
                        width: size.width * 0.04,
                      ),
                      Column(
                        children: [
                          const CircleAvatar(
                            backgroundColor: Colors.blueAccent,
                            backgroundImage:
                                AssetImage("assets/images/facebook.png"),
                          ),
                          Text(
                            "FaceBook",
                            style: theme2.textTheme.displaySmall,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: size.width * 0.04,
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: theme.appBarTheme.backgroundColor,
                            backgroundImage: const AssetImage(
                              "assets/images/twitter.png",
                            ),
                          ),
                          Text(
                            "X",
                            style: theme2.textTheme.displaySmall,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: size.width * 0.04,
                      ),
                      Column(
                        children: [
                          const CircleAvatar(
                            backgroundColor: Color.fromRGBO(128, 0, 0, 0.925),
                            backgroundImage:
                                AssetImage("assets/images/instagram.png"),
                          ),
                          Text(
                            "Instagram",
                            style: theme2.textTheme.displaySmall,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height * 1.25,
                  child: GridView(
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 7,
                        mainAxisSpacing: 7,
                        childAspectRatio: .66,
                      ),
                      padding: EdgeInsets.symmetric(
                          vertical: size.height * .02,
                          horizontal: size.width * .05),
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Movies()));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: theme.colorScheme.onBackground,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 8,
                                  child: Container(
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10),
                                        ),
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/movieswall.jpg'),
                                          fit: BoxFit.cover,
                                        )),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Text(
                                    'All Movies',
                                    style: theme.textTheme.displaySmall,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context)=>const Books())
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: theme.colorScheme.onBackground,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 8,
                                  child: Container(
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10),
                                        ),
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/novels.jpg'),
                                          fit: BoxFit.cover,
                                        )),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Text(
                                    'The Novels',
                                    style: theme.textTheme.displaySmall,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                            onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context)=>const Character()),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: theme.colorScheme.onBackground,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 8,
                                  child: Container(
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10),
                                        ),
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/goblin.jpg'),
                                          fit: BoxFit.cover,
                                        )),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Text(
                                    'Characters',
                                    style: theme.textTheme.displaySmall,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                            onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context)=>const Wands())
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: theme.colorScheme.onBackground,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 8,
                                  child: Container(
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10),
                                        ),
                                        image: DecorationImage(
                                          image: AssetImage(
                                            'assets/images/wand-collection-.jpeg',
                                          ),
                                          fit: BoxFit.cover,
                                        )),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Text(
                                    'The Wands',
                                    style: theme.textTheme.displaySmall,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                            onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context)=>const Spells())
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: theme.colorScheme.onBackground,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 8,
                                  child: Container(
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10),
                                        ),
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/magicspell.jpg'),
                                          fit: BoxFit.cover,
                                        )),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Text(
                                    'Magic Spells',
                                    style: theme.textTheme.displaySmall,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                            onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context)=>const Potions())
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: theme.colorScheme.onBackground,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 8,
                                  child: Container(
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10),
                                        ),
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/magicpotion.jpg'),
                                          fit: BoxFit.cover,
                                        )),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Text(
                                    'Magic Potions',
                                    style: theme.textTheme.displaySmall,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                            onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context)=>const Halls())
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: theme.colorScheme.onBackground,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 8,
                                  child: Container(
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10),
                                        ),
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/houselogo.jpg'),
                                          fit: BoxFit.cover,
                                        )),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Text(
                                    'Hall History',
                                    style: theme.textTheme.displaySmall,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                            onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context)=>const Artifacts())
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: theme.colorScheme.onBackground,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 8,
                                  child: Container(
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10),
                                        ),
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/artifacts.jpg'),
                                          fit: BoxFit.cover,
                                        )),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Text(
                                    'Magic Artifacts',
                                    style: theme.textTheme.displaySmall,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ]),
                )
              ],
            )),
          ),
        ),
      ),
    );
  }
}

//Drawer
Drawer callDrawer(BuildContext context) {
  var theme = PotterTheme.dark();
  var size = MediaQuery.of(context).size;
  return Drawer(
    backgroundColor: Colors.black54,
    child: ListView(
      children: [
        ListTile(
          leading: FloatingActionButton.small(
            backgroundColor: theme.floatingActionButtonTheme.backgroundColor,
            foregroundColor: theme.floatingActionButtonTheme.foregroundColor,
            onPressed: () {},
            child: Icon(
              Icons.photo_album_outlined,
              color: theme.iconTheme.color,
            ),
          ),
          title: Text(
            'Gallery',
            style: theme.textTheme.displaySmall,
          ),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Gallery()));
          },
        ),
        Divider(
          endIndent: size.width * 0.15,
          color: Colors.white,
        ),
        ListTile(
          leading: FloatingActionButton.small(
            backgroundColor: theme.floatingActionButtonTheme.backgroundColor,
            foregroundColor: theme.floatingActionButtonTheme.foregroundColor,
            onPressed: () {},
            child: Icon(
              Icons.login_sharp,
              color: theme.iconTheme.color,
            ),
          ),
          title: Text(
            'Sign In',
            style: theme.textTheme.displaySmall,
          ),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const LogIn()));
          },
        ),
        Divider(
          endIndent: size.width * 0.15,
          color: Colors.white,
        ),
        ListTile(
          leading: FloatingActionButton.small(
            backgroundColor: theme.floatingActionButtonTheme.backgroundColor,
            foregroundColor: theme.floatingActionButtonTheme.foregroundColor,
            onPressed: () {},
            child: Icon(
              Icons.person_add_alt,
              color: theme.iconTheme.color,
            ),
          ),
          title: Text(
            'Sign Up',
            style: theme.textTheme.displaySmall,
          ),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const SignUp()));
          },
        ),
        Divider(
          endIndent: size.width * 0.15,
          color: Colors.white,
        ),
        ListTile(
          leading: FloatingActionButton.small(
            backgroundColor: theme.floatingActionButtonTheme.backgroundColor,
            foregroundColor: theme.floatingActionButtonTheme.foregroundColor,
            onPressed: () {},
            child: Icon(
              Icons.power_off,
              color: theme.iconTheme.color,
            ),
          ),
          title: Text(
            'Logout',
            style: theme.textTheme.displaySmall,
          ),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const HomePage()));
          },
        ),
      ],
    ),
  );
}
