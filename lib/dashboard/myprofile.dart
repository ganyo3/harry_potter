import 'package:flutter/material.dart';
import '../theme_storage/potterthemes.dart';

class MyProfile extends StatefulWidget {
  @override
  const MyProfile({super.key});

  @override
  State<StatefulWidget> createState() {
    return MyProfileState();
  }
}

class MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var theme = PotterTheme.dark();
    var theme2 = PotterTheme.light();
    return Scaffold(
       resizeToAvoidBottomInset: true,
      appBar: AppBar(
        // backgroundColor: theme.colorScheme.onBackground,
        foregroundColor: theme.appBarTheme.foregroundColor,
        title: Text(
          "User Profile",
          style: theme2.textTheme.displayLarge,
        ),
        centerTitle: true,
      ),
      body: DecoratedBox(
        decoration: const BoxDecoration(
          // Image set to background of the body
          image: DecorationImage(
              image: AssetImage("assets/images/golden_snitch.jpg"),
              fit: BoxFit.fill),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              //A Welcome Text
              child: Column(children: [
                //User Information...
                SizedBox(
                  height: size.height * 0.01,
                ),
                //Main Body Content...
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: size.width * 0.02,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: size.height * 0.01,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: size.width * 0.02,
                        ),
                        padding: EdgeInsets.symmetric(
                          vertical: size.height * 0.01,
                          // horizontal: size.height * 0.01,
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: size.width * 0.15,
                              backgroundImage: const AssetImage(
                                  "assets/images/harry_potter.jpg"),
                            ),
                            SizedBox(
                              width: size.width * 0.02,
                            ),
                            Column(
                              children: [
                                Text(
                                  "Welcome",
                                  style: theme2.textTheme.displayMedium,
                                ),
                                Text("Grand Master Mimzy",
                                    style: theme2.textTheme.displayMedium),
                                Text("Sorcerer Supreme",
                                    style: theme2.textTheme.displaySmall),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const Divider(
                        color: Colors.black,
                      ),
                      const Divider(
                        color: Colors.black,
                      ),
                      const ListTile(
                        leading: Icon(Icons.email_rounded),
                        title: Text("Email Address"),
                      ),
                      const ListTile(
                        leading: Icon(Icons.phone_android_rounded),
                        title: Text("Phone Numbers"),
                      ),
                      const ListTile(
                        leading: Icon(Icons.location_city_rounded),
                        title: Text("Country/Region"),
                      ),
                      const ListTile(
                        leading: Icon(Icons.notifications),
                        title: Text("Notifications"),
                      ),
                      const ListTile(
                        leading: Icon(Icons.feedback_rounded),
                        title: Text("Feedback"),
                      ),
                      SizedBox(
                        height: size.height * 0.145,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: size.height * 0.02,
                        ),
                        child: FloatingActionButton.extended(
                          backgroundColor:
                              theme2.floatingActionButtonTheme.backgroundColor,
                          foregroundColor:
                              theme2.floatingActionButtonTheme.foregroundColor,
                          extendedTextStyle: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                          extendedPadding:
                              EdgeInsets.symmetric(horizontal: size.width * 0.28),
                          shape: const ContinuousRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          onPressed: () {},
                          label: const Text("Edit User Info"),
                        ),
                      ),
                    ],
                  ),
                ),
                //Main Body Content...
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
