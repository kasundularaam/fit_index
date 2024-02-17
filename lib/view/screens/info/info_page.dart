import 'package:fit_index/view/screens/info/widgets/result_card.dart';
import 'package:flutter/material.dart';

/// A StatelessWidget representing the information page displaying results.
class InfoPage extends StatelessWidget {
  /// Constructs an [InfoPage] widget.
  const InfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEAF3FA),
      appBar: AppBar(title: const Text("Results")),
      body: const SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 20),
            ResultCard(),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
