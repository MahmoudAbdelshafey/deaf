class ShopModel {
  List<Datum> data;

  ShopModel({required this.data});

  factory ShopModel.fromJson(Map<String, dynamic> json) {
    var list = json['data'] as List;
    List<Datum> dataList = list.map((i) => Datum.fromJson(i)).toList();
    return ShopModel(data: dataList);
  }
}

class Datum {
  String id;
  String title;
  String description;
  int sold;
  bool isFree;
  int price;
  String imageCover;
  Category category;
  int ratingsQuantity;

  Datum({
    required this.id,
    required this.title,
    required this.description,
    required this.sold,
    required this.isFree,
    required this.price,
    required this.imageCover,
    required this.category,
    required this.ratingsQuantity,
  });

  factory Datum.fromJson(Map<String, dynamic> json) {
    return Datum(
      id: json['_id'],
      title: json['title'],
      description: json['description'],
      sold: json['sold'],
      isFree: json['isFree'],
      price: json['price'],
      imageCover: json['imageCover'],
      category: Category.fromJson(json['category']),
      ratingsQuantity: json['ratingsQuantity'],
    );
  }
}

class Category {
  String id;
  String name;

  Category({
    required this.id,
    required this.name,
  });

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id: json['_id'],
      name: json['name'],
    );
  }
}
