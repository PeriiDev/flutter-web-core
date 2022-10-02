import 'package:flutter/material.dart';

class CustomOnHoverButton extends StatefulWidget {
  final Widget child;

  const CustomOnHoverButton({
    super.key,
    required this.child,
  });

  @override
  State<CustomOnHoverButton> createState() => _CustomOnHoverButtonState();
}

class _CustomOnHoverButtonState extends State<CustomOnHoverButton> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {

    //final hoveredTransform = Matrix4.identity()..translate(0, -8, 0); //Move upper side (north)
    //final hoveredTransform = Matrix4.identity()..translate(12, -8, 0); //Move diagonal right (northest)
    final hoveredTransform = Matrix4.identity()..scale(1.1);
    final transform = isHovered ? hoveredTransform : Matrix4.identity();

    return MouseRegion(
      onEnter: (event) => onEntered(true),
      onExit: (event) => onEntered(false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        transform: transform,
        child: widget.child,
      ),
    );
  }

  void onEntered(bool isHovered) {
    setState(() {
      this.isHovered = isHovered;
    });
  }
}
