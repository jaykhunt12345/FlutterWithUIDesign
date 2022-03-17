import 'package:flutter/material.dart';
import 'package:flutter_ui_project_1/utils/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogImage extends StatelessWidget {
  final String image;

  const CatalogImage({Key? key, required this.image}) : super(key: key);
  // const CatalogImage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      image,
    ).box.rounded.p8.color(MyTheme.white).make().p16().w40(context);
  }
}
