import 'package:flutter/material.dart';

/// A widget representing a box with a border.
class BorderedBox extends StatelessWidget {
  /// The color of the border.
  final int borderColor;

  /// The child widget contained within the box.
  final Widget child;

  /// Constructs a [BorderedBox] with the specified parameters.
  ///
  /// [borderColor] is the color of the border.
  ///
  /// [child] is the widget contained within the box.
  const BorderedBox({
    Key? key,
    required this.borderColor,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: BorderSide(color: Color(borderColor)),
            borderRadius: BorderRadius.circular(12),
          ),
          color: Colors.white),
      child: child,
    );
  }
}
