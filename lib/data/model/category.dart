class ModelCatergory {
  int results;
  PaginationResult paginationResult;
  List<Datum> data;

  ModelCatergory({
    required this.results,
    required this.paginationResult,
    required this.data,
  });

  factory ModelCatergory.fromJson(Map<String, dynamic> json) => ModelCatergory(
    results: json["results"],
    paginationResult: PaginationResult.fromJson(json["paginationResult"]),
    data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "results": results,
    "paginationResult": paginationResult.toJson(),
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class Datum {
  String id;
  String name;
  String imageCover;
  DateTime createdAt;
  DateTime updatedAt;

  Datum({
    required this.id,
    required this.name,
    required this.imageCover,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["_id"],
    name: json["name"],
    imageCover: json["imageCover"],
    createdAt: DateTime.parse(json["createdAt"]),
    updatedAt: DateTime.parse(json["updatedAt"]),
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "name": name,
    "imageCover": imageCover,
    "createdAt": createdAt.toIso8601String(),
    "updatedAt": updatedAt.toIso8601String(),
  };
}

class PaginationResult {
  int currentPage;
  int limit;
  int numberOfPages;

  PaginationResult({
    required this.currentPage,
    required this.limit,
    required this.numberOfPages,
  });

  factory PaginationResult.fromJson(Map<String, dynamic> json) => PaginationResult(
    currentPage: json["currentPage"],
    limit: json["limit"],
    numberOfPages: json["numberOfPages"],
  );

  Map<String, dynamic> toJson() => {
    "currentPage": currentPage,
    "limit": limit,
    "numberOfPages": numberOfPages,
  };
}
