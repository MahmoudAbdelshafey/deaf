class GetLoggedUserCartModel {
  String status;
  List<Datum> data;

  GetLoggedUserCartModel({
    required this.status,
    required this.data,
  });

  factory GetLoggedUserCartModel.fromJson(Map<String, dynamic> json) =>
      GetLoggedUserCartModel(
        status: json["status"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Datum {
  String id;
  List<CartItem> cartItems;
  User user;
  DateTime createdAt;
  DateTime updatedAt;
  int v;
  int totalCartprice;

  Datum({
    required this.id,
    required this.cartItems,
    required this.user,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
    required this.totalCartprice,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["_id"],
        cartItems: List<CartItem>.from(
            json["cartItems"].map((x) => CartItem.fromJson(x))),
        user: User.fromJson(json["user"]),
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        v: json["__v"],
        totalCartprice: json["totalCartprice"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "cartItems": List<dynamic>.from(cartItems.map((x) => x.toJson())),
        "user": user.toJson(),
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "__v": v,
        "totalCartprice": totalCartprice,
      };
}

class CartItem {
  Product product;
  int price;
  String id;

  CartItem({
    required this.product,
    required this.price,
    required this.id,
  });

  factory CartItem.fromJson(Map<String, dynamic> json) => CartItem(
        product: Product.fromJson(json["product"]),
        price: json["price"],
        id: json["_id"],
      );

  Map<String, dynamic> toJson() => {
        "product": product.toJson(),
        "price": price,
        "_id": id,
      };
}

class Product {
  String id;
  String title;
  String description;
  int sold;
  bool isFree;
  int price;
  String imageCover;
  List<dynamic> images;
  Category category;
  int ratingsQuantity;
  int v;
  String productId;

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.sold,
    required this.isFree,
    required this.price,
    required this.imageCover,
    required this.images,
    required this.category,
    required this.ratingsQuantity,
    required this.v,
    required this.productId,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["_id"],
        title: json["title"],
        description: json["description"],
        sold: json["sold"],
        isFree: json["isFree"],
        price: json["price"],
        imageCover: json["imageCover"],
        images: List<dynamic>.from(json["images"].map((x) => x)),
        category: Category.fromJson(json["category"]),
        ratingsQuantity: json["ratingsQuantity"],
        v: json["__v"],
        productId: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "title": title,
        "description": description,
        "sold": sold,
        "isFree": isFree,
        "price": price,
        "imageCover": imageCover,
        "images": List<dynamic>.from(images.map((x) => x)),
        "category": category.toJson(),
        "ratingsQuantity": ratingsQuantity,
        "__v": v,
        "id": productId,
      };
}

class Category {
  String id;
  String name;

  Category({
    required this.id,
    required this.name,
  });

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["_id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
      };
}

class User {
  String name;

  User({
    required this.name,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
      };
}
