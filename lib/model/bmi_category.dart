// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

/// A class representing BMI (Body Mass Index) categories.
class BmiCategory {
  /// The minimum value of the BMI range for this category.
  final double min;

  /// The maximum value of the BMI range for this category.
  final double max;

  /// A string representation of the BMI range.
  final String rangeStr;

  /// The category name.
  final String category;

  /// A message describing the category.
  final String message;

  /// The background color associated with the category.
  final int backgroundColor;

  /// Constructs a [BmiCategory] with the specified parameters.
  ///
  /// [min] is the minimum value of the BMI range.
  ///
  /// [max] is the maximum value of the BMI range.
  ///
  /// [rangeStr] is a string representation of the BMI range.
  ///
  /// [category] is the name of the BMI category.
  ///
  /// [message] is a message describing the category.
  ///
  /// [backgroundColor] is the background color associated with the category.
  BmiCategory({
    required this.min,
    required this.max,
    required this.rangeStr,
    required this.category,
    required this.message,
    required this.backgroundColor,
  });

  BmiCategory copyWith({
    double? min,
    double? max,
    String? rangeStr,
    String? category,
    String? message,
    int? backgroundColor,
  }) {
    return BmiCategory(
      min: min ?? this.min,
      max: max ?? this.max,
      rangeStr: rangeStr ?? this.rangeStr,
      category: category ?? this.category,
      message: message ?? this.message,
      backgroundColor: backgroundColor ?? this.backgroundColor,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'min': min,
      'max': max,
      'rangeStr': rangeStr,
      'category': category,
      'message': message,
      'backgroundColor': backgroundColor,
    };
  }

  factory BmiCategory.fromMap(Map<String, dynamic> map) {
    return BmiCategory(
      min: map['min'] as double,
      max: map['max'] as double,
      rangeStr: map['rangeStr'] as String,
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
    return 'BmiCategory(min: $min, max: $max, rangeStr: $rangeStr, category: $category, message: $message, backgroundColor: $backgroundColor)';
  }

  @override
  bool operator ==(covariant BmiCategory other) {
    if (identical(this, other)) return true;

    return other.min == min &&
        other.max == max &&
        other.rangeStr == rangeStr &&
        other.category == category &&
        other.message == message &&
        other.backgroundColor == backgroundColor;
  }

  @override
  int get hashCode {
    return min.hashCode ^
        max.hashCode ^
        rangeStr.hashCode ^
        category.hashCode ^
        message.hashCode ^
        backgroundColor.hashCode;
  }
}
