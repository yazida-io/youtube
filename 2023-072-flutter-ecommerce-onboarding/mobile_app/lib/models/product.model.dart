class Product {
  final String code;
  final String name;
  final String description;
  bool favorite = false;
  final dynamic price;
  final List images;

  Product({
    required this.code,
    required this.name,
    required this.description,
    required this.price,
    required this.images,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      code: json['code'],
      name: json['name'],
      description: json['description'],
      price: json['price'],
      images: json['images'],
    );
  }
}
