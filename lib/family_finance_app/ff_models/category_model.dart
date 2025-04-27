class Category {
  final int id;
  final String userId;
  final String name;
  final String type;
  final String createdAt;

  Category({
    required this.id,
    required this.userId,
    required this.name,
    required this.type,
    required this.createdAt,
  });

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id: json['id'] ?? 0,
      userId: json['userId'] ?? '',
      name: json['name'] ?? '',
      type: json['type'] ?? '',
      createdAt: json['createdAt'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'userId': userId,
      'name': name,
      'type': type,
      'createdAt': createdAt,
    };
  }
}
