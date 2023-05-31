class Product {
  Product({
     this.id,
   this.title,
   this.price,
     this.description,
   this.category,
     this.image,
    this.rating,
  });

  int? id;
  String? title;
  double? price;
  String? description;
 String ? category;
  String? image;
  Rating? rating;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
    id: json["id"],
    title: json["title"],
    price: json["price"].toDouble(),
    description: json["description"],
  category: json["category"],
    image: json["image"],
    rating: Rating.fromJson(json["rating"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "price": price,
    "description": description,
    // "category": categoryValues.reverse![category],
    "image": image,
    "rating": rating!.toJson(),
  };
}



class Rating {
  Rating({
    required this.rate,
    required this.count,
  });

  double rate;
  int count;

  factory Rating.fromJson(Map<String, dynamic> json) => Rating(
    rate: json["rate"].toDouble(),
    count: json["count"],
  );

  Map<String, dynamic> toJson() => {
    "rate": rate,
    "count": count,
  };


}





