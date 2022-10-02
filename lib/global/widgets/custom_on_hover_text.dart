import 'package:flutter/material.dart';
import 'package:sprung/sprung.dart';

class CustomOnHoverText extends StatefulWidget {
  final Widget Function(bool isHovered) builder;

  const CustomOnHoverText({
    super.key,
    required this.builder,
  });

  @override
  State<CustomOnHoverText> createState() => _CustomOnHoverTextState();
}

class _CustomOnHoverTextState extends State<CustomOnHoverText> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    //final hoveredTransform = Matrix4.identity()..translate(0, -8, 0); //Move upper side (north)
    //final hoveredTransform = Matrix4.identity()..translate(12, -8, 0); //Move diagonal right (northest)
    final hoveredTransform = Matrix4.identity()
      ..translate(0, 0, 0)
      ..scale(1.1);
    final transform = isHovered ? hoveredTransform : Matrix4.identity();

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (event) => onEntered(true),
      onExit: (event) => onEntered(false),
      child: AnimatedContainer(
        curve: Sprung.overDamped,
        duration: const Duration(milliseconds: 200),
        transform: transform,
        child: widget.builder(isHovered),
      ),
    );
  }

  void onEntered(bool isHovered) {
    setState(() {
      this.isHovered = isHovered;
    });
  }
}
