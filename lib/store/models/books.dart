class Books {
  String id;
  String title;
  String? description;
  int sold;
  bool isFree;
  int? price;
  String imageCover;
  List<dynamic> images;
  String? file;

  int ratingsQuantity;
  String datumId;
  String? videoLink;

  Books({
    required this.id,
    required this.title,
    this.description,
    required this.sold,
    required this.isFree,
    this.price,
    required this.imageCover,
    required this.images,
    this.file,
    required this.ratingsQuantity,
    required this.datumId,
    this.videoLink,
  });
}