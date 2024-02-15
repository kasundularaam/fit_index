// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class BmiResult {
  final double min;
  final double max;
  final String category;
  final String message;
  final int backgroundColor;
  BmiResult({
    required this.min,
    required this.max,
    required this.category,
    required this.message,
    required this.backgroundColor,
  });

  BmiResult copyWith({
    double? min,
    double? max,
    String? category,
    String? message,
    int? backgroundColor,
  }) {
    return BmiResult(
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

  factory BmiResult.fromMap(Map<String, dynamic> map) {
    return BmiResult(
      min: map['min'] as double,
      max: map['max'] as double,
      category: map['category'] as String,
      message: map['message'] as String,
      backgroundColor: map['backgroundColor'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory BmiResult.fromJson(String source) =>
      BmiResult.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'BmiResult(min: $min, max: $max, category: $category, message: $message, backgroundColor: $backgroundColor)';
  }

  @override
  bool operator ==(covariant BmiResult other) {
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
