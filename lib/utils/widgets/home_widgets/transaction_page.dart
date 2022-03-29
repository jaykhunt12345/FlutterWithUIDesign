import 'package:flutter/material.dart';
import 'package:flutter_ui_project_1/utils/widgets/drawer.dart';

class TransactionPage extends StatelessWidget {
  // const TransactionPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
            title: Text("Transaction", style: TextStyle(color: Colors.black),),
            centerTitle: true,
           ),
      );
}
