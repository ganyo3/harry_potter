import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

class PotterTheme {
  // 1
  static TextTheme lightTextTheme = const TextTheme(
    bodyLarge: TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w700,
      color: Colors.black,
    ),
    displayLarge: TextStyle(
      fontSize: 25.0,
      fontWeight: FontWeight.w700,
      color: Color.fromARGB(255, 248, 147, 15),
    ),
    displayMedium: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w700,
      color: Color.fromARGB(255, 248, 147, 15),
    ),
    displaySmall: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      color: Color.fromARGB(255, 248, 147, 15),
    ),
    titleLarge: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
  );
  // 2
  static TextTheme darkTextTheme = const TextTheme(
    bodyLarge: TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w700,
      color: Colors.white,
    ),
    bodyMedium:TextStyle(
      fontSize: 15.0,
      fontWeight: FontWeight.bold,
      color: Color.fromRGBO(128, 0, 0, 0.925),
    ),
    displayLarge: TextStyle(
      fontSize: 25.0,
      fontWeight: FontWeight.bold,
      color: Colors.grey,
    ),
    displayMedium: TextStyle(
      fontSize: 25.0,
      fontWeight: FontWeight.w700,
      color: Color.fromARGB(255, 248, 147, 15),
    ),
    displaySmall: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    titleLarge: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    titleMedium: TextStyle(
      fontSize: 15,
      color: Colors.amber,
       fontWeight: FontWeight.w600,
    )
  );
  // 3
  static ThemeData light() {
    return ThemeData(
       colorScheme: const ColorScheme.light(
        onSurface: Colors.black87,
      ),
      brightness: Brightness.light,
      appBarTheme: const AppBarTheme(
        foregroundColor: Colors.white,
        backgroundColor: Colors.black,
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        foregroundColor: Colors.white,
        backgroundColor: Color.fromARGB(255, 248, 147, 15),
      ),
      textTheme: lightTextTheme,
    );

    
  }

  // 4
  static ThemeData dark() {
    return ThemeData(
      colorScheme: const ColorScheme.dark(
        onSurface: Color.fromRGBO(128, 0, 0, 0.925),
      ),
      brightness: Brightness.dark,
      appBarTheme: const AppBarTheme(
        foregroundColor: Colors.white,
        backgroundColor: Colors.black,
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        foregroundColor: Colors.white,
        backgroundColor: Color.fromARGB(255, 248, 147, 15),
      ),
      iconTheme: const IconThemeData(
        color: Colors.white,
      ),
      textTheme: darkTextTheme,
    );
  }
}


// class AppTheme {
  // static ThemeData get lightTheme {
  //   return ThemeData(
  //     primaryColor: const Color(0xff0B8FAC),
  //     scaffoldBackgroundColor: const Color.fromARGB(255, 255, 255, 255),
  //     textTheme: textThemeLight,
  //     //AppBarTheme
  //     appBarTheme: AppBarTheme(
  //       iconTheme: const IconThemeData(color: Color(0xff000000),),
  //       foregroundColor: const Color(0xff000000),
  //       titleTextStyle: const TextTheme(
  //         titleLarge: TextStyle(
  //           color: Color(0xff0B8FAC),
  //           fontSize: 20.0,
  //           fontWeight: FontWeight.w900,
  //         ),
  //       ).titleLarge,
  //       actionsIconTheme: const IconThemeData(
  //         size: 28,
  //         color: Color(0xffD2EBE7),
  //       ),
  //       centerTitle: true,
  //     ),
  //     // searchBarTheme
  //     searchBarTheme: const SearchBarThemeData(
  //       backgroundColor: WidgetStatePropertyAll(Color(0xffD2EBE7)),
  //       hintStyle: WidgetStatePropertyAll(
  //         TextStyle(
  //           color: Color(0xff7BC1B7),
  //         ),
  //       ),
  //       shape: WidgetStatePropertyAll(ContinuousRectangleBorder(
  //           borderRadius: BorderRadius.all(Radius.circular(15)))),
  //     ),
  //     //floatingActionButton
  //     floatingActionButtonTheme: const FloatingActionButtonThemeData(
  //       foregroundColor: Colors.white,
  //       backgroundColor: Colors.lightBlueAccent,
  //       extendedTextStyle: TextStyle(
  //         color: Color(0xffD2EBE7),
  //         fontSize: 18,
  //         fontWeight: FontWeight.w900,
  //       ),
  //       shape: ContinuousRectangleBorder(
  //         borderRadius: BorderRadius.all(Radius.circular(80)),
  //       ),
  //       extendedPadding: EdgeInsets.symmetric(
  //         horizontal: 80,
  //       ),
  //     ),
  //     // bottomNavigationBarTheme
  //     bottomNavigationBarTheme: const BottomNavigationBarThemeData(
  //       backgroundColor: Color(0xffD2EBE7),
  //       unselectedItemColor: Colors.black,
  //       selectedIconTheme: IconThemeData(
  //         color: Color(0xffD2EBE7),
  //       ),
  //       selectedLabelStyle: TextStyle(
  //         fontSize: 5,
  //       ),
  //     ),
  //     //iconButtonTheme
  //     iconButtonTheme: const IconButtonThemeData(
  //       style: ButtonStyle(
  //         iconColor: WidgetStatePropertyAll(Color(0xff0B8FAC)),
  //         backgroundColor: WidgetStatePropertyAll(Color(0xffD2EBE7)),
  //         padding: WidgetStatePropertyAll(EdgeInsets.all(5)),
  //         iconSize: WidgetStatePropertyAll(25),
  //         shape: WidgetStatePropertyAll(CircleBorder()),
  //       ),
  //     ),
  //     iconTheme: const IconThemeData(color: Colors.lightBlue, size: 25.0),
  //     //TextFormField
  //     inputDecorationTheme: const InputDecorationTheme(
  //       suffixIconColor:  Color(0xff000000),
  //       hintStyle: TextStyle(
  //         color: Color(0xffD2EBE7),
  //       ),
  //       enabledBorder: OutlineInputBorder(
  //           borderRadius: BorderRadius.all(
  //             Radius.circular(10),
  //           ),
  //           borderSide: BorderSide(
  //             color: Color(0xffD2EBE7),
  //           )),
  //     ),
      
  //     // chipTheme
  //     chipTheme: ChipThemeData(
  //       backgroundColor: const Color(0xff0B8FAC),
  //       shape: ContinuousRectangleBorder(
  //         side: const BorderSide(style: BorderStyle.none),
  //         borderRadius: BorderRadius.circular(50),
  //       ),
  //       labelPadding: const EdgeInsets.symmetric(horizontal: 15),
  //       labelStyle: const TextStyle(
  //         color: Colors.white,
  //         fontSize: 15,
  //       ),
  //     ),
  //     //buttonTheme
  //     buttonTheme: const ButtonThemeData(
  //       buttonColor: Colors.blue,
  //       textTheme: ButtonTextTheme.primary,
  //     ),
  //     //TextButtonTheme
  //     textButtonTheme: const TextButtonThemeData(
  //         style: ButtonStyle(
  //             foregroundColor: WidgetStatePropertyAll(
  //               Color(0xff0B8FAC),
  //             ),
  //             textStyle: WidgetStatePropertyAll(TextStyle(
  //               fontSize: 15,
  //             )))),
  //     //CardTheme
  //     cardColor: const Color(0xffD2EBE7),
  //     cardTheme: const CardTheme(
  //       margin: EdgeInsets.symmetric(
  //         horizontal: 15,
  //         vertical: 5,
  //       ),
  //       color: Color(0xff0B8FAC),
  //       shape: ContinuousRectangleBorder(
  //           borderRadius: BorderRadius.all(Radius.circular(25)),
  //           side: BorderSide(
  //             color: Color(0xff000000),
  //             // width: 1
  //           )),
  //     ),
  //     dialogBackgroundColor: Colors.white,
  //     primaryColorDark: const Color(0xff000000),
  //     primaryColorLight: const Color(0xffD2EBE7),
  //    colorScheme:
  //         ColorScheme.fromSwatch().copyWith(secondary: Colors.orange).copyWith(
  //               surface: Colors.white,
  //             ),
  //   );
  // }

  // static TextTheme get textThemeLight {
  //   return const TextTheme(
  //       headlineMedium: TextStyle(
  //         fontSize: 20,
  //         fontWeight: FontWeight.w900,
  //       ),
        // bodyLarge: TextStyle(
        //   color: Color.fromARGB(255, 255, 255, 255),
        //   fontSize: 45,
        //   fontWeight: FontWeight.bold,
        // ),
        // labelLarge: TextStyle(
        //   color: Color.fromARGB(255, 216, 235, 232),
        //   fontSize: 30,
        //   fontWeight: FontWeight.w600,
        // ),
        // labelMedium: TextStyle(
        //   fontSize: 16,
        //   fontWeight: FontWeight.w600,
        // )
        // bodyMedium: TextStyle(
        //   color: Color(0xff000000),
        //   fontSize: 15,
        //   fontWeight: FontWeight.w900,
        // ),
        // bodySmall: TextStyle(
        //   color: Color(0xff000000),
        //   fontSize: 14,
        //   fontWeight: FontWeight.w900,
        // ),
  //       );
  // }

// add a remote repository.....................................................................
//DarkTheme
  // static ThemeData get darkTheme {
  //   return ThemeData(
  //     primaryColor: const Color(0xff0B8FAC),
  //     scaffoldBackgroundColor: const Color(0xff000000),
  //     textTheme: _textThemeDark,
  //     //AppBarTheme
  //     appBarTheme: AppBarTheme(
  //       backgroundColor: const Color(0xff000000),
  //       iconTheme: const IconThemeData(color: Color(0xffD2EBE7)),
  //       foregroundColor: const Color(0xffD2EBE7),
  //       titleTextStyle: const TextTheme(
  //         titleLarge: TextStyle(
  //           color: Color(0xffD2EBE7),
  //           fontSize: 25.0,
  //           fontWeight: FontWeight.w900,
  //         ),
  //       ).titleLarge,
  //       actionsIconTheme: const IconThemeData(
  //         size: 28,
  //         color: Color(0xffD2EBE7),
  //       ),
  //       centerTitle: true,
  //     ),
  //     // searchBarTheme
  //     searchBarTheme: const SearchBarThemeData(
  //       backgroundColor: WidgetStatePropertyAll(Color(0xffD2EBE7)),
  //       hintStyle: WidgetStatePropertyAll(
  //         TextStyle(
  //           color: Color(0xff000000),
  //         ),
  //       ),
  //       shape: WidgetStatePropertyAll(ContinuousRectangleBorder(
  //           side: BorderSide(
  //             color: Color(0xff7BC1B7),
  //           ),
  //           borderRadius: BorderRadius.all(Radius.circular(15)))),
  //     ),
  //     //floatingActionButton
  //     floatingActionButtonTheme: const FloatingActionButtonThemeData(
  //       foregroundColor: Colors.white,
  //       backgroundColor: Colors.lightBlueAccent,
  //       extendedTextStyle: TextStyle(
  //         color: Color(0xffD2EBE7),
  //         fontSize: 18,
  //         fontWeight: FontWeight.w900,
  //       ),
  //       shape: ContinuousRectangleBorder(
  //         borderRadius: BorderRadius.all(Radius.circular(80)),
  //       ),
  //       extendedPadding: EdgeInsets.symmetric(
  //         horizontal: 80,
  //       ),
  //     ),
  //     // bottomNavigationBarTheme
  //     bottomNavigationBarTheme: const BottomNavigationBarThemeData(
  //       backgroundColor: Color(0xffD2EBE7),
  //       unselectedItemColor: Colors.black,
  //       selectedIconTheme: IconThemeData(
  //         color: Color(0xffD2EBE7),
  //       ),
  //       selectedLabelStyle: TextStyle(
  //         fontSize: 5,
  //       ),
  //     ),
  //     //iconButtonTheme
  //     iconButtonTheme: const IconButtonThemeData(
  //       style: ButtonStyle(
  //         iconColor: WidgetStatePropertyAll(Colors.blue),
  //         backgroundColor:
  //             WidgetStatePropertyAll(Color.fromARGB(92, 33, 149, 243)),
  //         padding: WidgetStatePropertyAll(EdgeInsets.all(5)),
  //         iconSize: WidgetStatePropertyAll(25),
  //         shape: WidgetStatePropertyAll(CircleBorder()),
  //       ),
  //     ),
  //     iconTheme: const IconThemeData(color: Colors.lightBlue, size: 25.0),
  //     //TextFormField
  //     inputDecorationTheme: const InputDecorationTheme(
  //       suffixIconColor: Colors.white,
  //       hintStyle: TextStyle(
  //         color: Colors.white30,
  //       ),
  //       enabledBorder: OutlineInputBorder(
  //           borderRadius: BorderRadius.all(
  //             Radius.circular(40),
  //           ),
  //           borderSide: BorderSide(
  //             color: Colors.white30,
  //           )),
  //     ),
  //     listTileTheme: const ListTileThemeData(
  //       textColor: Colors.white,
  //     ),
  //     // chipTheme
  //     chipTheme: ChipThemeData(
  //       backgroundColor: const Color(0xff0B8FAC),
  //       shape: ContinuousRectangleBorder(
  //         borderRadius: BorderRadius.circular(20),
  //       ),
  //       labelPadding: const EdgeInsets.symmetric(horizontal: 15),
  //       labelStyle: const TextStyle(
  //         color: Colors.white,
  //         fontSize: 15,
  //       ),
  //     ),
  //     //buttonTheme
  //     buttonTheme: const ButtonThemeData(
  //       buttonColor: Colors.blue,
  //       textTheme: ButtonTextTheme.primary,
  //     ),
  //     dropdownMenuTheme: const DropdownMenuThemeData(
  //         textStyle: TextStyle(
  //       color: Colors.white,
  //     )),
  //     //TextButtonTheme
  //     textButtonTheme: const TextButtonThemeData(
  //         style: ButtonStyle(
  //             foregroundColor: WidgetStatePropertyAll(
  //               Colors.blue,
  //             ),
  //             textStyle: WidgetStatePropertyAll(TextStyle(
  //               fontSize: 15,
  //             )))),
  //     //CardTheme
  //     cardColor: Colors.white30,
  //     cardTheme: const CardTheme(
  //       margin: EdgeInsets.symmetric(
  //         horizontal: 15,
  //         vertical: 5,
  //       ),
  //       color: Color(0xff0B8FAC),
  //       shape: ContinuousRectangleBorder(
  //           borderRadius: BorderRadius.all(Radius.circular(25)),
  //           side: BorderSide(
  //             color: Colors.blue,
  //             // width: 1
  //           )),
  //     ),
  //     dialogBackgroundColor: const Color(0xff000000),
  //     primaryColorDark: const Color.fromARGB(255, 255, 255, 255),
  //     colorScheme:
  //         ColorScheme.fromSwatch().copyWith(secondary: Colors.orange).copyWith(
  //               surface: Colors.white,
  //             ),
  //   );
  // }

  // static TextTheme get _textThemeDark {
  //   return const TextTheme(
      // displayLarge: TextStyle(),
      // displayMedium: TextStyle(),
      // displaySmall: TextStyle(),
      // titleLarge: TextStyle(),
      // titleMedium: TextStyle(
      //     color: Color(0xffD2EBE7), fontSize: 20, fontWeight: FontWeight.w900),
      // titleSmall: TextStyle(
      //   color: Color(0xffD2EBE7),
      //   fontSize: 14,
      // ),
      // headlineLarge: TextStyle(),
      // headlineMedium: TextStyle(),
      // headlineSmall: TextStyle(),
//       labelMedium: TextStyle(
//         color: Color.fromARGB(255, 255, 255, 255),
//         fontSize: 15,
//         fontWeight: FontWeight.w600,
//       ),
//       // bodyLarge: TextStyle(),
//       bodyLarge: TextStyle(
//         color: Color(0xffD2EBE7),
//         fontWeight: FontWeight.w900,//textfields
//         fontSize: 15,
//       ),
//       bodyMedium: TextStyle(
//         color: Color(0xffD2EBE7),
//         fontWeight: FontWeight.w900,
//       ),
//       bodySmall: TextStyle(
//         color: Color(0xffD2EBE7),
//         fontSize: 14,
//       ),
//     );
//   }
// }
