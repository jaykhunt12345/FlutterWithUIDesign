import 'package:flutter/material.dart';
import 'package:flutter_ui_project_1/core/store.dart';
import 'package:flutter_ui_project_1/pages/cart_page.dart';
import 'package:flutter_ui_project_1/pages/home_page.dart';
import 'package:flutter_ui_project_1/pages/login_page.dart';
import 'package:flutter_ui_project_1/utils/routes.dart';
import 'package:flutter_ui_project_1/utils/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp(VxState(store: MyStore(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // int days = 30;
    // String name = "Jay Khunt";
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.loginRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.cartRoute: (context) => CartPage(),
      },
    );
  }
}
