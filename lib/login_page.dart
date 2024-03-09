import 'package:flutter/material.dart';
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
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.black,
        title: Text("Sign In",),
        centerTitle: true,
      ),
      body: DecoratedBox(
        decoration: const BoxDecoration(
          // Image set to background of the body
          image: DecorationImage(
              image: AssetImage("assets/images/wand.jpg"),
              fit: BoxFit.cover),
        ),
        child: SafeArea(
          child: Center(
            //Creating Forms
           child: Container(
             child: Column(
              children: [
                const Text("Sign In To Your DashBoard",
                style: TextStyle(
                  color: Color.fromARGB(211, 243, 151, 31),
                  fontSize: 25,
                  fontWeight: FontWeight.bold
                ),
                ),
                
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: size.width*0.05,
                    vertical: size.height*0.15
                  ),
                  child: Column(
                    children: [
                      TextFormField(
                       decoration: const InputDecoration(
                          label: Text("Email...",
                          style: TextStyle(color: Colors.white60),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderRadius: BorderRadius.only(
                             bottomLeft: Radius.circular(10),
                             bottomRight: Radius.circular(10),
                              ),
                              borderSide: BorderSide(
                                width: 2.5,
                                color: Colors.white60)
                          ),
                        ),
                      ),

SizedBox(height: size.height*0.05,),

                      TextFormField(
                       decoration: const InputDecoration(
                          label: Text("Password...",
                          style: TextStyle(color: Colors.white60),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderRadius: BorderRadius.only(
                             bottomLeft: Radius.circular(10),
                             bottomRight: Radius.circular(10),
                              ),
                              borderSide: BorderSide(
                                width: 2.5,
                                color: Colors.white60)
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                  Row(
                    children: [
                      const Text(
                        "Forgot Password?",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context,);
                          },
                          child: const Text(
                            "Reset",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 248, 147, 15),
                            ),
                          ))
                    ],
                  ),
                 FloatingActionButton.extended(
                   backgroundColor: Colors.black45,
                   foregroundColor: Colors.white,
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
                        const Text(
                          "Not a wizard yet?",
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
                                      builder: (context) => const SignUp()));
                            },
                            child: const Text(
                              "Join In",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 248, 147, 15),
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
