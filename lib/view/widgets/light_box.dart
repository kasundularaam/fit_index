import 'package:flutter/material.dart';

class LightBox extends StatelessWidget {
  final int backgroundColor;
  final Widget child;
  const LightBox({
    Key? key,
    required this.backgroundColor,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          color: Color(backgroundColor).withOpacity(0.1)),
      child: child,
    );
  }
}
