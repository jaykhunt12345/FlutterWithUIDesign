import 'dart:convert';

class CatalogModel {
  static List<item>? items;

 static item getById(int id) =>
      items!.firstWhere((element) => element.id == id, orElse: null);


 static item getByPosition(int pos) => items![pos]  ; 
}

class item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  item(this.id, this.name, this.desc, this.price, this.color, this.image);

  item copyWith({
    int? id,
    String? name,
    String? desc,
    num? price,
    String? color,
    String? image,
  }) {
    return item(
      id ?? this.id,
      name ?? this.name,
      desc ?? this.desc,
      price ?? this.price,
      color ?? this.color,
      image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'desc': desc,
      'price': price,
      'color': color,
      'image': image,
    };
  }

  factory item.fromMap(Map<String, dynamic> map) {
    return item(
      map['id']?.toInt() ?? 0,
      map['name'] ?? '',
      map['desc'] ?? '',
      map['price'] ?? 0,
      map['color'] ?? '',
      map['image'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory item.fromJson(String source) => item.fromMap(json.decode(source));

  @override
  String toString() {
    return 'item(id: $id, name: $name, desc: $desc, price: $price, color: $color, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is item &&
        other.id == id &&
        other.name == name &&
        other.desc == desc &&
        other.price == price &&
        other.color == color &&
        other.image == image;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        desc.hashCode ^
        price.hashCode ^
        color.hashCode ^
        image.hashCode;
  }

  static fromMAP(item) {}
}
