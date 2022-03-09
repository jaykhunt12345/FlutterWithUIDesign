import 'package:flutter/material.dart';
import 'package:flutter_ui_project_1/models/catalog.dart';
import 'package:flutter_ui_project_1/utils/widgets/drawer.dart';
import 'package:flutter_ui_project_1/utils/widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  final int days = 30;
  final String name = "Jay Khunt";

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
