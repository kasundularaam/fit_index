import 'package:flutter/material.dart';

/// A widget representing a box with a light background color.
class LightBox extends StatelessWidget {
  /// The background color of the box.
  final int backgroundColor;

  /// The child widget contained within the box.
  final Widget child;

  /// Constructs a [LightBox] with the specified parameters.
  ///
  /// [backgroundColor] is the background color of the box.
  ///
  /// [child] is the widget contained within the box.
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
