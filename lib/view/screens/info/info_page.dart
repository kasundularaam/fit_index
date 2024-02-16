import 'package:fit_index/view/screens/info/widgets/result_card.dart';
import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEAF3FA),
      appBar: AppBar(title: const Text("Info")),
      body: const SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 20),
            ResultCard(),
          ],
        ),
      ),
    );
  }
}
