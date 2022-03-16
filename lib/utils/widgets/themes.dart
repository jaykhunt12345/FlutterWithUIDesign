import 'package:flutter/material.dart';

// class MyTheme{
//   static ThemeData get lightTheme(BuildContext context) => ThemeData(
//         primarySwatch: Colors.deepPurple,
//         appBarTheme: AppBarTheme(
//           color: Colors.white,
//           elevation: 0.0,
//           iconTheme: IconThemeData(color: Colors.black),
//           textTheme: Theme.of(context).textTheme,
//         ),
//       );

//       static ThemeData get darkTheme(BuildContext context) => ThemeData(
//        brightness: Brightness.dark
//       );
// }

class MyTheme {
  static ThemeData get lightTheme => ThemeData(
      primarySwatch: Colors.deepPurple,
      appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
      ));

  static ThemeData get darkTheme => ThemeData(
      brightness: Brightness.dark,
      cardColor: Colors.black,
      appBarTheme: AppBarTheme(
        color: Colors.black,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
      ));

  // colors
  static Color creamColor = Color(0xfff5f5f5);
  static Color darkBluishColor = Color(0xff403b58);
}
