import 'package:fit_index/view/screens/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() => runApp(const MyApp());

/// The main application widget.
class MyApp extends StatelessWidget {
  /// Constructs a [MyApp] widget.
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Returns a MaterialApp wrapped with GetMaterialApp for GetX functionalities
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false, // Hide debug banner
      title: "Fit Index", // Set the title of the application
      home: HomePage(), // Set the initial route to HomePage
    );
  }
}
