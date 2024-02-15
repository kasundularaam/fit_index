import 'package:fit_index/controller/bmi_result_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
      return Container(
        padding: const EdgeInsets.all(20),
        decoration: ShapeDecoration(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            color: Color(result.category.backgroundColor)),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  result.category.category,
                  style: context.textTheme.titleLarge!
                      .copyWith(color: Colors.white),
                ),
                const Spacer(),
                Text(
                  "${result.category.min.toString()} - ${result.category.max.toString()} ",
                  style: context.textTheme.titleMedium!
                      .copyWith(color: Colors.white),
                ),
              ],
            ),
            const Divider(
              color: Colors.white,
            ),
            Text(
              result.bmi.toStringAsFixed(1),
              style:
                  context.textTheme.displaySmall!.copyWith(color: Colors.white),
            ),
            const Divider(
              color: Colors.white,
            ),
            Text(
              result.category.message,
              style: context.textTheme.bodySmall!.copyWith(color: Colors.white),
            )
          ],
        ),
      );
    });
  }
}
