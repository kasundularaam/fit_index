class ValueValidator {
  static String? validateHeight(String? heightStr) {
    if (heightStr == null) {
      return 'Height cannot be null.';
    }

    double? height;
    try {
      height = double.parse(heightStr);
    } catch (e) {
      return 'Invalid height value.';
    }

    if (height <= 0) {
      return 'Height must be greater than zero.';
    } else if (height >= 3) {
      return 'Height seems too high. Please check the unit.';
    }
    return null;
  }

  static String? validateWeight(String? weightStr) {
    if (weightStr == null) {
      return 'Weight cannot be null.';
    }

    double? weight;
    try {
      weight = double.parse(weightStr);
    } catch (e) {
      return 'Invalid weight value.';
    }

    if (weight <= 0) {
      return 'Weight must be greater than zero.';
    } else if (weight >= 500) {
      return 'Weight seems too high. Please check the unit.';
    }
    return null;
  }
}
