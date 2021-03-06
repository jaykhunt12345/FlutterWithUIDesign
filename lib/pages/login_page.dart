import 'package:flutter/material.dart';
import 'package:flutter_ui_project_1/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool ChangeButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/undraw_Login_re_4vu2.png",
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Welcome $name",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(children: [
                TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter User name", labelText: "User name"),
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    }),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Enter Password", labelText: "Password"),
                ),
                SizedBox(
                  height: 20.0,
                ),
                InkWell(
                  onTap: () async {
                    setState(() {
                      ChangeButton = true;
                    });
                    await Future.delayed(Duration(seconds: 1));
                    Navigator.pushNamed(context, MyRoutes.homeRoute);
                  },
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    width: ChangeButton ? 50 : 150,
                    height: 50,
                    alignment: Alignment.center,
                    child: ChangeButton
                        ? Icon(
                            Icons.done,
                            color: Colors.white,
                          )
                        : Text(
                            "Login",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                    decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        // shape: ChangeButton
                        //     ? BoxShape.circle
                        //     : BoxShape.rectangle,
                        borderRadius:
                            BorderRadius.circular((ChangeButton ? 50 : 7))),
                  ),
                ),
                // ElevatedButton(
                //   child: Text("Login"),
                //   style: TextButton.styleFrom(minimumSize: Size(150, 50)),
                //   onPressed: () {
                //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                //   },
                // ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
