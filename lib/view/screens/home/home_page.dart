import 'package:fit_index/controller/bmi_result_controller.dart';
import 'package:fit_index/view/screens/home/widgets/bmi_form.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// A StatelessWidget representing the home page of the application.
class HomePage extends StatelessWidget {
  /// Constructs a [HomePage] widget.
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Register BmiResultController to the GetX dependency injection system
    Get.put(BmiResultController());
    return Scaffold(
      backgroundColor: const Color(0xFFEAF3FA),
      appBar: AppBar(title: const Text("Fit Index")),
      body: Column(
        children: [
          const Spacer(flex: 1),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100),
            child: Image.asset("assets/logo.png"),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Empowering Your Health Journey, One Calculation at a Time!",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w300,
                color: Colors.blueGrey,
              ),
            ),
          ),
          const Spacer(flex: 1),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: BMIForm(),
          ),
          const SizedBox(height: 20),
          const Spacer(flex: 4),
        ],
      ),
    );
  }
}
