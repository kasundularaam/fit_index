import 'package:fit_index/model/bmi_category.dart';

class BmiDataStore {
  static List<BmiCategory> bmiCategories = [
    BmiCategory(
      min: double.negativeInfinity,
      max: 16,
      rangeStr: "<16 (kg/m2)",
      category: 'Severe undernourishment',
      message:
          'Your BMI suggests severe undernourishment. This could pose serious health risks. It\'s crucial to ensure you\'re consuming enough nutrients, vitamins, and minerals. Consider seeking immediate medical advice and incorporating nutrient-dense foods into your diet.',
      backgroundColor: 0xFFFF0000, // Red
    ),
    BmiCategory(
      min: 16,
      max: 16.9,
      rangeStr: "16-16.9 (kg/m2)",
      category: 'Medium undernourishment',
      message:
          'Your BMI indicates medium undernourishment. It\'s important to address this condition to prevent health complications. Focus on incorporating a variety of nutrient-rich foods into your diet, including fruits, vegetables, lean proteins, and healthy fats. Consider consulting with a healthcare professional or dietitian for personalized guidance.',
      backgroundColor: 0xFFFFA500, // Orange
    ),
    BmiCategory(
      min: 17,
      max: 18.4,
      rangeStr: "17-18.4 (kg/m2)",
      category: 'Slight undernourishment',
      message:
          'Your BMI suggests slight undernourishment. While not severe, it\'s essential to address this to maintain optimal health. Consider focusing on balanced meals that include a variety of food groups, including whole grains, lean proteins, fruits, vegetables, and healthy fats. Incorporating regular exercise and consulting with a dietitian can also be beneficial.',
      backgroundColor: 0xFFFFD700, // Yellow
    ),
    BmiCategory(
      min: 18.5,
      max: 24.9,
      rangeStr: "18.5-24.9 (kg/m2)",
      category: 'Normal nutrition state',
      message:
          'Congratulations! Your BMI falls within the normal range. This indicates a healthy weight for your height. To maintain this status, continue practicing healthy lifestyle habits, including regular exercise, balanced nutrition, adequate sleep, and stress management. Remember to prioritize your overall well-being and listen to your body\'s needs.',
      backgroundColor: 0xFF00FF00, // Green
    ),
    BmiCategory(
      min: 25,
      max: 29.9,
      rangeStr: "25-29.9 (kg/m2)",
      category: 'Overweight',
      message:
          'Your BMI indicates overweight status. While not necessarily harmful, carrying excess weight can increase the risk of various health conditions. Focus on gradual, sustainable lifestyle changes such as adopting a balanced diet, engaging in regular physical activity, managing stress, and prioritizing sleep. Consulting with a healthcare professional or dietitian can provide valuable support and guidance.',
      backgroundColor: 0xFFFFA500, // Orange
    ),
    BmiCategory(
      min: 30,
      max: 39.9,
      rangeStr: "30-39.9 (kg/m2)",
      category: 'Obesity',
      message:
          'Your BMI suggests obesity. This condition can increase the risk of serious health problems such as heart disease, diabetes, and stroke. It\'s essential to prioritize your health by making sustainable lifestyle changes. Focus on adopting a balanced diet rich in fruits, vegetables, lean proteins, and whole grains, along with regular physical activity and stress management. Seeking support from healthcare professionals or support groups can also be beneficial on your journey to improved health.',
      backgroundColor: 0xFFFF0000, // Red
    ),
    BmiCategory(
      min: 40,
      max: double.infinity,
      rangeStr: ">40 (kg/m2)",
      category: 'Pathological obesity',
      message:
          'Your BMI indicates pathological obesity, which poses significant health risks. This condition increases the likelihood of developing serious medical conditions such as heart disease, stroke, type 2 diabetes, and certain cancers. Seeking immediate medical attention and comprehensive support is crucial. Collaborate with healthcare professionals, including doctors, dietitians, and mental health specialists, to develop a personalized plan addressing nutrition, physical activity, and emotional well-being.',
      backgroundColor: 0xFF8B0000, // DarkRed
    ),
  ];
}
