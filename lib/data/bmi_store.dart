import 'package:fit_index/model/bmi_category.dart';

class BmiDataStore {
  static List<BmiCategory> bmiCategories = [
    BmiCategory(
      min: double.negativeInfinity,
      max: 18.5,
      category: 'Underweight',
      message: 'Your BMI indicates that you\'re underweight. '
          'It\'s important to ensure you\'re getting enough nutrients '
          'and calories for your health. Consider speaking with a healthcare professional for guidance.',
      backgroundColor: 0xFF00B0FF,
    ),
    BmiCategory(
      min: 18.5,
      max: 24.9,
      category: 'Normal Weight',
      message:
          'Congratulations! Your BMI falls within the normal weight range. '
          'Keep up the good work with your healthy lifestyle choices!',
      backgroundColor: 0xFF00FF00,
    ),
    BmiCategory(
      min: 25,
      max: 29.9,
      category: 'Overweight',
      message: 'Your BMI suggests that you\'re overweight. '
          'Consider making some small changes to your diet and exercise routine to improve your health.',
      backgroundColor: 0xFFFFA500,
    ),
    BmiCategory(
      min: 30,
      max: 34.9,
      category: 'Obese Class I',
      message: 'Your BMI indicates that you\'re in the obese Class I category. '
          'It\'s important to prioritize your health by incorporating healthier habits into your daily life.',
      backgroundColor: 0xFFFF5722,
    ),
    BmiCategory(
      min: 35,
      max: 39.9,
      category: 'Obese Class II',
      message: 'Your BMI falls within the obese Class II category. '
          'It\'s crucial to take proactive steps to improve your health. '
          'Consider consulting with a healthcare professional for personalized advice.',
      backgroundColor: 0xFFFF0000,
    ),
    BmiCategory(
      min: 40,
      max: double.infinity,
      category: 'Obese Class III',
      message:
          'Your BMI suggests that you\'re in the obese Class III category. '
          'This indicates a higher risk of health complications. '
          'It\'s important to seek guidance from a healthcare professional to develop a plan for improving your health.',
      backgroundColor: 0xFFFF0000,
    ),
  ];
}
