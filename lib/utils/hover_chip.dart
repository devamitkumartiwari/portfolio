import 'package:flutter/material.dart';

class HoverChip extends StatefulWidget {
  final Widget label;

  const HoverChip({super.key, required this.label});

  @override
  State<HoverChip> createState() => _HoverChipState();
}

class _HoverChipState extends State<HoverChip> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        decoration: BoxDecoration(
          color: _isHovered ? const Color.fromRGBO(33, 150, 243, 0.2) : Colors.grey.shade100,
          borderRadius: BorderRadius.circular(20),
          boxShadow: _isHovered
              ? [
            const BoxShadow(
              color: Color.fromRGBO(33, 150, 243, 0.2),
              blurRadius: 8,
              offset: Offset(0, 4),
            )
          ]
              : [],
        ),
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 8),
        child: widget.label,
      ),
    );
  }
}
