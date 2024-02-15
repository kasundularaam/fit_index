import 'package:fit_index/controller/bmi_result_controller.dart';
import 'package:fit_index/view/screens/home/widgets/bmi_form.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(BmiResultController());
    return Scaffold(
      backgroundColor: const Color(0xFFEAF3FA),
      appBar: AppBar(title: const Text("Fit Index")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 20),
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                "assets/cal.jpg",
                width: double.infinity,
                fit: BoxFit.fitWidth,
              ),
            ),
            const SizedBox(height: 20),
            const BMIForm(),
          ],
        ),
      ),
    );
  }
}
