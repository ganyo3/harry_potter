import 'package:flutter/material.dart';
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
    // var theme = harryPotterTheme();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title:   const Text("Welcome To Your DashBoard",
                   style: TextStyle(
                    color: Colors.amber,
                    fontWeight:FontWeight.bold,
                    fontSize: 20,
                   ),
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
                // opacity: 0.9,
                fit: BoxFit.cover),
          ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Center(
             child:  Column(children: [
                   
                     //The User Info...
                     Container(
                      margin: EdgeInsets.symmetric(horizontal: size.width*0.04),
                     padding: EdgeInsets.symmetric(vertical: size.height*0.01,
                     horizontal: size.height*0.01,
                     ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white30
                      ),
                       child: Row(
                        children: [
                         CircleAvatar(
                          radius: size.width*0.15,
                          backgroundImage: const AssetImage("assets/images/harry_potter.jpg"),
                         ),
                         SizedBox(width: size.width*0.02,),
                        const Column(
                          children: [
                            Text("Grand Master Mimzy",  
                            style: TextStyle(
                      color: Colors.amber,
                      fontWeight:FontWeight.bold,
                      fontSize: 20,
                    ),),
                         Text("Sorcerer Supreme", 
                         style: TextStyle(
                      color: Colors.amber,
                      fontWeight:FontWeight.bold,
                    ),),
                          ],
                        ),
                        ],
                       ),
                     ),
                     //Main Body Content...
                  SizedBox(
                height: size.height*1.25,
                child: GridView(
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 7,
                      mainAxisSpacing: 7,
                      childAspectRatio: .66,
                    ),
                    padding: EdgeInsets.symmetric(
                        vertical: size.height * .02,
                        horizontal: size.width * .05),
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(128, 0, 0, 0.925),
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
                            const Expanded(
                              flex: 1,
                              child: Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  'All Movies',
                                  style: TextStyle(color: Colors.amber),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(128, 0, 0, 0.925),
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
                            const Expanded(
                              flex: 1,
                              child: Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  'The Novels',
                                  style: TextStyle(color: Colors.amber),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(128, 0, 0, 0.925),
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
                            const Expanded(
                              flex: 1,
                              child: Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  'Characters',
                                  style: TextStyle(color: Colors.amber),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(128, 0, 0, 0.925),
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
                                            'assets/images/wand-collection-.jpeg',),
                                            fit: BoxFit.cover,
                                            )),
                              ),
                            ),
                            const Expanded(
                              flex: 1,
                              child: Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  'The Wands',
                                  style: TextStyle(color: Colors.amber),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(128, 0, 0, 0.925),
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
                            const Expanded(
                              flex: 1,
                              child: Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  'Magic Spells',
                                  style: TextStyle(color: Colors.amber),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(128, 0, 0, 0.925),
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
                            const Expanded(
                              flex: 1,
                              child: Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  'Magic Potions',
                                  style: TextStyle(color: Colors.amber),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(128, 0, 0, 0.925),
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
                            const Expanded(
                              flex: 1,
                              child: Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  'Hall History',
                                  style: TextStyle(color: Colors.amber),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(128, 0, 0, 0.925),
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
                            const Expanded(
                              flex: 1,
                              child: Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  'Magic Artifacts',
                                  style: TextStyle(color: Colors.amber),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ]),
              )
               ],)
              ),
          ),
        ),
      ),
    );
  }
}
//Drawer 
Drawer callDrawer(BuildContext context) {
   var size = MediaQuery.of(context).size;
    return Drawer(
      backgroundColor: Colors.black54,
      child: ListView(
        children: [
          ListTile(
            leading: FloatingActionButton.small(
              backgroundColor: Colors.blue,
              onPressed: () {},
              child: const Icon(
                Icons.login_sharp,
                color: Colors.white,
              ),
            ),
            title: const Text(
              'Sign In',
              style: TextStyle(color: Colors.white),
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios_sharp,
              color: Colors.white,
            ),
            onTap: () {
               Navigator.push(context,
              MaterialPageRoute(builder: (context) => const LogIn())
              );
            },
          ),
          Divider(
          endIndent: size.width*0.15,
        color: Colors.white,
        ),
          ListTile(
            leading: FloatingActionButton.small(
              backgroundColor: Colors.blue,
              onPressed: () {},
              child: const Icon(
                Icons.person_add_alt,
                color: Colors.white,
              ),
            ),
            title: const Text(
              'Sign Up',
              style: TextStyle(color: Colors.white),
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios_sharp,
              color: Colors.white,
            ),
            onTap: () {
             Navigator.push(context,
              MaterialPageRoute(builder: (context) => const SignUp())
              );
            },
          ),
          Divider(
          endIndent: size.width*0.15,
        color: Colors.white,
        ),
          ListTile(
            leading: FloatingActionButton.small(
              backgroundColor: Colors.blue,
              onPressed: () {},
              child: const Icon(
                Icons.power_off,
                color: Colors.white,
              ),
            ),
            title: const Text(
              'Logout',
              style: TextStyle(color: Colors.white),
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios_sharp,
              color: Colors.white,
            ),
            onTap: () {
              Navigator.push(context,
              MaterialPageRoute(builder: (context) => const HomePage())
              );
            },
          ),
        ],
      ),
    );
  }