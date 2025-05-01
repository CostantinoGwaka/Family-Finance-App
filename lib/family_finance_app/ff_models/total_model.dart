class TotalSummary {
  final String name;
  final int total;

  TotalSummary({
    required this.name,
    required this.total,
  });

  factory TotalSummary.fromJson(Map<String, dynamic> json) {
    return TotalSummary(
      name: json['name'],
      total: json['total'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'total': total,
    };
  }
}
