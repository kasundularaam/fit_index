import 'package:fit_index/controller/bmi_result_controller.dart';
import 'package:fit_index/core/value_validators.dart';
import 'package:fit_index/view/screens/info/info_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BMIForm extends StatefulWidget {
  const BMIForm({super.key});

  @override
  State<BMIForm> createState() => _BMIFormState();
}

class _BMIFormState extends State<BMIForm> {
  final _formKey = GlobalKey<FormState>();
  final _controller = Get.find<BmiResultController>();
  String height = "";
  String weight = "";
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        color: Colors.white,
      ),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              keyboardType: TextInputType.number,
              onChanged: (value) => height = value,
              validator: (value) => ValueValidator.validateHeight(value),
              decoration: InputDecoration(
                label: const Text("Your Height (in meters)"),
                border: const OutlineInputBorder(),
                fillColor: Colors.blue.withOpacity(0.2),
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              keyboardType: TextInputType.number,
              onChanged: (value) => weight = value,
              validator: (value) => ValueValidator.validateWeight(value),
              decoration: InputDecoration(
                label: const Text("Your Weight (in Kgs)"),
                border: const OutlineInputBorder(),
                fillColor: Colors.blue.withOpacity(0.2),
              ),
            ),
            const SizedBox(height: 10),
            const Divider(thickness: 1),
            const SizedBox(height: 10),
            FilledButton.icon(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.reset();
                    _controller.loadResult(
                        height: double.parse(height),
                        weight: double.parse(weight));
                    Get.to(() => const InfoPage());
                  }
                },
                icon: const Icon(Icons.health_and_safety_rounded),
                label: const Text("Calculate")),
          ],
        ),
      ),
    );
  }
}
