class CatalogModel{
 static final items = [
  item(
      id: 1,
      name: "i phone 12 pro max",
      desc: "Apple i phone 12 generation",
      price: 999,
      color: "#33505a",
      image:
          "https://gadgetsleo.com/wp-content/uploads/2020/08/Apple-iPhone-12-Pro-Max-Gold-2.jpg"),
];

}


class item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}


