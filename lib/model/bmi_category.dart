// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class BmiCategory {
  final double min;
  final double max;
  final String category;
  final String message;
  final int backgroundColor;
  BmiCategory({
    required this.min,
    required this.max,
    required this.category,
    required this.message,
    required this.backgroundColor,
  });

  BmiCategory copyWith({
    double? min,
    double? max,
    String? category,
    String? message,
    int? backgroundColor,
  }) {
    return BmiCategory(
      min: min ?? this.min,
      max: max ?? this.max,
      category: category ?? this.category,
      message: message ?? this.message,
      backgroundColor: backgroundColor ?? this.backgroundColor,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'min': min,
      'max': max,
      'category': category,
      'message': message,
      'backgroundColor': backgroundColor,
    };
  }

  factory BmiCategory.fromMap(Map<String, dynamic> map) {
    return BmiCategory(
      min: map['min'] as double,
      max: map['max'] as double,
      category: map['category'] as String,
      message: map['message'] as String,
      backgroundColor: map['backgroundColor'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory BmiCategory.fromJson(String source) =>
      BmiCategory.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'BmiCategory(min: $min, max: $max, category: $category, message: $message, backgroundColor: $backgroundColor)';
  }

  @override
  bool operator ==(covariant BmiCategory other) {
    if (identical(this, other)) return true;

    return other.min == min &&
        other.max == max &&
        other.category == category &&
        other.message == message &&
        other.backgroundColor == backgroundColor;
  }

  @override
  int get hashCode {
    return min.hashCode ^
        max.hashCode ^
        category.hashCode ^
        message.hashCode ^
        backgroundColor.hashCode;
  }
}
