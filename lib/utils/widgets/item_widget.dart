import 'package:flutter/material.dart';
import 'package:flutter_ui_project_1/models/catalog.dart';

class ItemWidget extends StatelessWidget {
  // const ItemWidget({ Key? key }) : super(key: key);

  final item;

  const ItemWidget({Key? key, @required this.item})
      : assert(item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          print("${item.name} pressed");
        },
        // leading: Image.network(item.image),
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
          "\₹${item.price}",
          textScaleFactor: 1.0,
          style:
              TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
