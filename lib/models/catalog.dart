class CatalogModel {
  static final items = [
    item(
        id: 1,
        name: "i phone 12 pro max",
        desc: "Apple i phone 12 generation (256GB)-Gold",
        price: 105900,
        color: "#33505a",
        image: "https://m.media-amazon.com/images/I/71fJ-gmBZtL._SL1500_.jpg"),
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
