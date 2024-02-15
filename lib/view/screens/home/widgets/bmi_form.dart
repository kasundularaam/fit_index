import 'package:fit_index/core/value_validators.dart';
import 'package:flutter/material.dart';

class BMIForm extends StatefulWidget {
  const BMIForm({super.key});

  @override
  State<BMIForm> createState() => _BMIFormState();
}

class _BMIFormState extends State<BMIForm> {
  final _formKey = GlobalKey<FormState>();
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
              validator: (value) => ValueValidator.validateHeight(value),
              decoration: InputDecoration(
                label: const Text("Your Height"),
                border: const OutlineInputBorder(),
                fillColor: Colors.blue.withOpacity(0.2),
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              keyboardType: TextInputType.number,
              validator: (value) => ValueValidator.validateWeight(value),
              decoration: InputDecoration(
                label: const Text("Your Weight"),
                border: const OutlineInputBorder(),
                fillColor: Colors.blue.withOpacity(0.2),
              ),
            ),
            const SizedBox(height: 20),
            FilledButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.health_and_safety_rounded),
                label: const Text("Calculate")),
          ],
        ),
      ),
    );
  }
}
