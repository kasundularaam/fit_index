import 'package:fit_index/view/screens/home/widgets/result_card.dart';
import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Info")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 20),
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                "assets/result.jpg",
                width: double.infinity,
                fit: BoxFit.fitWidth,
              ),
            ),
            const SizedBox(height: 20),
            const ResultCard(),
          ],
        ),
      ),
    );
  }
}
