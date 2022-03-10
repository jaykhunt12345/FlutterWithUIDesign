import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:flutter_ui_project_1/models/catalog.dart';
import 'package:flutter_ui_project_1/utils/widgets/drawer.dart';
import 'package:flutter_ui_project_1/utils/widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  // const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 30;

  final String name = "Jay Khunt";

  @override
  void initState() {
    super.initState();
    loadData();
  }
  
  loadData() async {
  final catalogJson = await rootBundle.loadString("assets/files/catalog.json");
  final decodedData = jsonDecode(catalogJson);
  // var productsData = decodedData["products"];
 
 
  }

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(4, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Catalog App",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: dummyList[index],
            );
          }),
      drawer: MyDrawer(),
    );
  }
}
