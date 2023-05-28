import 'package:flutter/material.dart';

class HoverButton extends StatefulWidget {
  final VoidCallback onPressed;
  final String text;

  const HoverButton({required this.text, required this.onPressed, Key? key})
      : super(key: key);

  @override
  State<HoverButton> createState() => _HoverButtonState();
}

class _HoverButtonState extends State<HoverButton> {
  bool _isHovered = false;

  void _handleHover(bool isHovered) {
    setState(() {
      _isHovered = isHovered;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => _handleHover(true),
      onExit: (event) => _handleHover(false),
      child: OutlinedButton.icon(
        onPressed: widget.onPressed,
        style: OutlinedButton.styleFrom(
          backgroundColor: _isHovered
              ? Colors.white
              : const Color.fromARGB(255, 47, 21, 135),
        ),
        icon: const Icon(Icons.arrow_right_alt),
        label: Text(
          widget.text,
          style: TextStyle(
              color: _isHovered ? Colors.black : Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}
