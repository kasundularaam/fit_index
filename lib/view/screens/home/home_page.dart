import 'package:fit_index/view/screens/home/widgets/bmi_form.dart';
import 'package:fit_index/view/screens/info_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
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
                "assets/cover.jpg",
                width: double.infinity,
                fit: BoxFit.fitWidth,
              ),
            ),
            const SizedBox(height: 20),
            BMIForm(),
            const SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(20),
              decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  color: Colors.green),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Your BMI is: ",
                        style: context.textTheme.titleLarge!
                            .copyWith(color: Colors.white),
                      ),
                      const Spacer(),
                      Text(
                        "12",
                        style: context.textTheme.titleLarge!
                            .copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                  const Divider(
                    color: Colors.white,
                  ),
                  Text(
                    "Your BMI indicates that you're underweight. It's important to ensure you're getting enough nutrients and calories for your health. Consider speaking with a healthcare professional for guidance.",
                    style: context.textTheme.bodySmall!
                        .copyWith(color: Colors.white),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            TextButton(
                onPressed: () => Get.to(() => const InfoPage()),
                child: const Text("See Info")),
          ],
        ),
      ),
    );
  }
}
