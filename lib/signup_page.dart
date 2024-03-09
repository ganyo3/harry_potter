import 'package:flutter/material.dart';

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
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.black,
        title: const Text(
          "Sign Up",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: DecoratedBox(
        decoration: const BoxDecoration(
          // Image set to background of the body
          image: DecorationImage(
              image: AssetImage("assets/images/potter-magic.jpg"),
              fit: BoxFit.cover),
        ),
        child: SafeArea(
          child: Center(
            //Creating Forms
            child: Container(
              child: Column(
                children: [
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: size.width * 0.20),
                    child: const Text(
                      "Sign Up...\nBe a Part of The Magic",
                      style: TextStyle(
                          color: Color.fromARGB(150, 255, 171, 64),
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
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
                            decoration: const InputDecoration(
                              label: Text(
                                "Email/Phone...",
                                style: TextStyle(color: Colors.white60),
                              ),
                              enabledBorder: UnderlineInputBorder(
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
                            decoration: const InputDecoration(
                              label: Text(
                                "Username...",
                                style: TextStyle(color: Colors.white60),
                              ),
                              enabledBorder: UnderlineInputBorder(
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
                            decoration: const InputDecoration(
                              label: Text(
                                "Password...",
                                style: TextStyle(color: Colors.white60),
                              ),
                              enabledBorder: UnderlineInputBorder(
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
                            obscureText: true,
                            decoration: const InputDecoration(
                              label: Text(
                                "Confirm Password...",
                                style: TextStyle(color: Colors.white60),
                              ),
                              enabledBorder: UnderlineInputBorder(
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
                      backgroundColor: const Color.fromARGB(150, 255, 171, 64),
                      foregroundColor: Colors.white,
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
                    padding: EdgeInsets.only(left: size.width * 0.27),
                    child: Row(
                      children: [
                        const Text(
                          "Already a Wizard?",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const LogIn()));
                            },
                            child: const Text(
                              "Log In",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(150, 255, 171, 64),
                              ),
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
    );
  }
}
