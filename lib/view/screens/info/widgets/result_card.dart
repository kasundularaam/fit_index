// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:fit_index/view/widgets/bordered_box.dart';
import 'package:fit_index/view/widgets/light_box.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:fit_index/controller/bmi_result_controller.dart';

class ResultCard extends StatelessWidget {
  const ResultCard({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<BmiResultController>();

    return Obx(() {
      final result = controller.result;

      if (result == null) {
        return const SizedBox();
      }
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Your BMI Results",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Divider(color: Color(result.category.backgroundColor)),
          Center(
            child: Text(
              result.bmi.toStringAsFixed(2),
              style: TextStyle(
                  color: Color(result.category.backgroundColor),
                  fontSize: 56,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 20),
          BorderedBox(
              backgroundColor: result.category.backgroundColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Measurements",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Divider(color: Color(result.category.backgroundColor)),
                  const SizedBox(height: 12),
                  LightBox(
                    backgroundColor: result.category.backgroundColor,
                    child: Row(
                      children: [
                        const Text("Height"),
                        const Spacer(),
                        Text("${result.height.toStringAsFixed(2)} m")
                      ],
                    ),
                  ),
                  const SizedBox(height: 12),
                  LightBox(
                    backgroundColor: result.category.backgroundColor,
                    child: Row(
                      children: [
                        const Text("Weight"),
                        const Spacer(),
                        Text("${result.weight.toStringAsFixed(2)} Kg")
                      ],
                    ),
                  ),
                ],
              )),
          const SizedBox(height: 20),
          BorderedBox(
            backgroundColor: result.category.backgroundColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "More Info",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Divider(color: Color(result.category.backgroundColor)),
                const SizedBox(height: 12),
                LightBox(
                    backgroundColor: result.category.backgroundColor,
                    child: Row(
                      children: [
                        const Text("Category"),
                        const Spacer(),
                        Text(result.category.category)
                      ],
                    )),
                const SizedBox(height: 12),
                LightBox(
                    backgroundColor: result.category.backgroundColor,
                    child: Row(
                      children: [
                        const Text("Range"),
                        const Spacer(),
                        Text(result.category.rangeStr)
                      ],
                    )),
                const SizedBox(height: 12),
                LightBox(
                  backgroundColor: result.category.backgroundColor,
                  child: Text(
                    result.category.message,
                  ),
                )
              ],
            ),
          )
        ],
      );
    });
  }
}
