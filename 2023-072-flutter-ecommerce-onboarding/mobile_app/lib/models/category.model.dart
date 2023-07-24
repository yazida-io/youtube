class Category {
  final String code;
  final String name;
  final String image;

  Category({required this.code, required this.name, required this.image});

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      code: json['code'],
      name: json['name'],
      image: json['image'],
    );
  }
}