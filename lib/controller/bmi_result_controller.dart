import 'package:fit_index/data/bmi_store.dart';
import 'package:fit_index/model/bmi_category.dart';
import 'package:fit_index/model/bmi_result.dart';
import 'package:get/get.dart';

class BmiResultController extends GetxController {
  final Rx<BmiResult?> _result = Rx<BmiResult?>(null);

  BmiResult? get result => _result.value;

  set result(BmiResult? result) {
    _result.value = result;
    update();
  }

  (BmiCategory, double) _calculate(double height, double weight) {
    double bmi = weight / (height * height);
    for (var category in BmiDataStore.bmiCategories) {
      if (bmi >= category.min && bmi < category.max) {
        return (category, bmi);
      }
    }
    throw Exception("Failed to calculate BMI");
  }

  void loadResult({required double height, required double weight}) {
    final (category, bmi) = _calculate(height, weight);
    result =
        BmiResult(height: height, weight: weight, category: category, bmi: bmi);
  }

  void clear() {
    result = null;
  }
}
