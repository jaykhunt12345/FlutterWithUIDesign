import 'package:flutter/material.dart';
import 'package:flutter_ui_project_1/utils/widgets/drawer.dart';

class YourOrdersPage extends StatelessWidget {
  // const YourOrdersPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        
        appBar: AppBar(
          title: Text(
            "Your Ordes",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
        ),
      );
}
