// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:fit_index/model/bmi_category.dart';

class BmiResult {
  final double height;
  final double weight;
  final double bmi;
  final BmiCategory category;
  BmiResult({
    required this.height,
    required this.weight,
    required this.bmi,
    required this.category,
  });

  BmiResult copyWith({
    double? height,
    double? weight,
    double? bmi,
    BmiCategory? category,
  }) {
    return BmiResult(
      height: height ?? this.height,
      weight: weight ?? this.weight,
      bmi: bmi ?? this.bmi,
      category: category ?? this.category,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'height': height,
      'weight': weight,
      'bmi': bmi,
      'category': category.toMap(),
    };
  }

  factory BmiResult.fromMap(Map<String, dynamic> map) {
    return BmiResult(
      height: map['height'] as double,
      weight: map['weight'] as double,
      bmi: map['bmi'] as double,
      category: BmiCategory.fromMap(map['category'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory BmiResult.fromJson(String source) =>
      BmiResult.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'BmiResult(height: $height, weight: $weight, bmi: $bmi, category: $category)';
  }

  @override
  bool operator ==(covariant BmiResult other) {
    if (identical(this, other)) return true;

    return other.height == height &&
        other.weight == weight &&
        other.bmi == bmi &&
        other.category == category;
  }

  @override
  int get hashCode {
    return height.hashCode ^ weight.hashCode ^ bmi.hashCode ^ category.hashCode;
  }
}
