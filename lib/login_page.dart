import 'package:flutter/material.dart';
import 'potterthemes.dart';
import 'signup_page.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<StatefulWidget> createState() {
    return LogInState();
  }
}

class LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    // TODO: implement build
    var theme = PotterTheme.dark();
    var theme2 = PotterTheme.light();
    return Scaffold(
      appBar: AppBar(
        foregroundColor: theme.appBarTheme.foregroundColor,
        backgroundColor: theme.appBarTheme.backgroundColor,
        title:const Text(
          "Sign In",
        ),
        centerTitle: true,
      ),
      body: DecoratedBox(
        decoration: const BoxDecoration(
          // Image set to background of the body
          image: DecorationImage(
              image: AssetImage("assets/images/wand.jpg"), fit: BoxFit.cover),
        ),
        child: SafeArea(
          child: Center(
            //Creating Forms
            child: Container(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: size.height*0.05),
                    child: Text(
                      "Sign In To Your DashBoard",
                      style: theme.textTheme.displayMedium,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.05,
                        vertical: size.height * 0.05),
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            label: Text(
                              "Email...",
                              style: theme.textTheme.displaySmall,
                            ),
                            enabledBorder:const UnderlineInputBorder(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                                borderSide: BorderSide(
                                    width: 2.5, color: Colors.white)),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.05,
                        ),
                        TextFormField(
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
                                    width: 2.5, color: Colors.white)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "Forgot Password?",
                        style: theme.textTheme.displaySmall,
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.pop(
                              context,
                            );
                          },
                          child: Text(
                            "Reset",
                            style: theme2.textTheme.displaySmall,
                          ))
                    ],
                  ),
                  FloatingActionButton.extended(
                    backgroundColor: theme.floatingActionButtonTheme.backgroundColor,
                    foregroundColor: theme.floatingActionButtonTheme.foregroundColor,
                    extendedTextStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                    extendedPadding:
                        EdgeInsets.symmetric(horizontal: size.width * 0.5),
                    shape: LinearBorder.none,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    label: const Text("Sign In"),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: size.width * 0.27),
                    child: Row(
                      children: [
                         Text(
                          "Not a wizard yet?",
                          style: theme.textTheme.displaySmall,
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const SignUp()));
                            },
                            child: Text(
                              "Join In",
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
    );
  }
}
