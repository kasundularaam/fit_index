import 'package:flutter/material.dart';

class BorderedBox extends StatelessWidget {
  final int backgroundColor;
  final Widget child;
  const BorderedBox({
    Key? key,
    required this.backgroundColor,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: BorderSide(color: Color(backgroundColor)),
            borderRadius: BorderRadius.circular(12),
          ),
          color: Colors.white),
      child: child,
    );
  }
}
