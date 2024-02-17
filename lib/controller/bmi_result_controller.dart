import 'package:fit_index/data/bmi_store.dart';
import 'package:fit_index/model/bmi_category.dart';
import 'package:fit_index/model/bmi_result.dart';
import 'package:get/get.dart';

/// A controller class for managing BMI (Body Mass Index) results.
class BmiResultController extends GetxController {
  final Rx<BmiResult?> _result = Rx<BmiResult?>(null);

  /// Get method to access the current BMI result.
  BmiResult? get result => _result.value;

  /// Set method to update the BMI result and trigger UI update.
  set result(BmiResult? result) {
    _result.value = result;
    update();
  }

  /// Private method to calculate BMI category based on height and weight.
  ///
  /// Returns a tuple containing the BMI category and the calculated BMI value.
  (BmiCategory, double) _calculate(double height, double weight) {
    double bmi = weight / (height * height);
    for (var category in BmiDataStore.bmiCategories) {
      if (bmi >= category.min && bmi < category.max) {
        return (category, bmi);
      }
    }
    throw Exception("Failed to calculate BMI");
  }

  /// Method to load BMI result based on provided height and weight.
  ///
  /// It calculates BMI category and updates the result.
  void loadResult({required double height, required double weight}) {
    final (category, bmi) = _calculate(height, weight);
    result =
        BmiResult(height: height, weight: weight, category: category, bmi: bmi);
  }
}
