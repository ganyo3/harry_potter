import 'package:flutter/material.dart';
import 'potterthemes.dart';
import 'login_page.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<StatefulWidget> createState() {
    return SignUpState();
  }
}

class SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var theme = PotterTheme.dark();
    var theme2 = PotterTheme.light();
    // TODO: implement build
    return Scaffold(
     resizeToAvoidBottomInset: false,
      appBar: AppBar(
        foregroundColor: theme.appBarTheme.foregroundColor,
        backgroundColor: theme.appBarTheme.backgroundColor,
        title: Text(
          "Sign Up",
          style: theme.textTheme.titleLarge,),
          centerTitle:true,
       ),
      body: DecoratedBox(
        decoration: const BoxDecoration(
          // Image set to background of the body
          image: DecorationImage(
              image: AssetImage("assets/images/potter-magic.jpg"),
              fit: BoxFit.fill),
        ),
        child: SafeArea(
          child: Center(
            //Creating Forms
            child: SingleChildScrollView(
              child: Padding(
               padding: EdgeInsets.only(bottom: size.height * 0.2),
                child: Column(
                  children: [
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: size.width * 0.20),
                      child: Text(
                        "Sign Up...\nBe a Part of The Magic",
                        style: theme.textTheme.displayMedium,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: size.width * 0.05,
                          vertical: size.height * 0.05),
                      child: Padding(
                        padding: EdgeInsets.only(right: size.width * 0.20),
                        child: Column(
                          children: [
                            TextFormField(
                                style: theme.textTheme.displaySmall,
                              decoration: InputDecoration(
                           label: Text(
                                  "Email/Phone...",
                                  style: theme.textTheme.displaySmall,
                                ),
                                enabledBorder: const UnderlineInputBorder(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10),
                                    ),
                                    borderSide: BorderSide(
                                        width: 2.5, color: Colors.white60)),
                              ),
                            ),
                            SizedBox(
                              height: size.height * 0.02,
                            ),
                            TextFormField(
                                style: theme.textTheme.displaySmall,
                              decoration: InputDecoration(
                                label: Text(
                                  "Username...",
                                  style: theme.textTheme.displaySmall,
                                ),
                                enabledBorder: const UnderlineInputBorder(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10),
                                    ),
                                    borderSide: BorderSide(
                                        width: 2.5, color: Colors.white60)),
                              ),
                            ),
                            SizedBox(
                              height: size.height * 0.02,
                            ),
                            TextFormField(
                                style: theme.textTheme.displaySmall,
                                 obscureText: true,
                              decoration: InputDecoration(
                                label: Text(
                                  "Password...",
                                  style: theme.textTheme.displaySmall,
                                ),
                                enabledBorder: const UnderlineInputBorder(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10),
                                    ),
                                    borderSide: BorderSide(
                                        width: 2.5, color: Colors.white60)),
                              ),
                            ),
                            SizedBox(
                              height: size.height * 0.02,
                            ),
                            TextFormField(
                                style: theme.textTheme.displaySmall,
                              obscureText: true,
                              decoration: InputDecoration(
                                label: Text(
                                  "Confirm Password...",
                                  style: theme.textTheme.displaySmall,
                                ),
                                enabledBorder: const UnderlineInputBorder(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10),
                                    ),
                                    borderSide: BorderSide(
                                        width: 2.5, color: Colors.white60)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: size.width * 0.20),
                      child: FloatingActionButton.extended(
                        backgroundColor:
                            theme.floatingActionButtonTheme.backgroundColor,
                        foregroundColor:
                            theme.floatingActionButtonTheme.foregroundColor,
                        extendedTextStyle: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                        extendedPadding:
                            EdgeInsets.symmetric(horizontal: size.width * 0.25),
                        shape: LinearBorder.none,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        label: const Text("Register"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: size.width * 0.22),
                      child: Row(
                        children: [
                          Text(
                            "Already a Wizard?",
                            style: theme.textTheme.displaySmall
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const LogIn()));
                              },
                              child: Text(
                                "Log In",
                                style: theme2.textTheme.displaySmall,
                              ))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
