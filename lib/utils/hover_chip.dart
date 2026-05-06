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
    final scheme = Theme.of(context).colorScheme;

    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        decoration: BoxDecoration(
          color: _isHovered ? scheme.primaryContainer : scheme.surfaceContainer,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: _isHovered
                ? scheme.primary.withValues(alpha: 0.4)
                : scheme.outlineVariant,
            width: 1,
          ),
          boxShadow: _isHovered
              ? [
                  BoxShadow(
                    color: scheme.primary.withValues(alpha: 0.15),
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  )
                ]
              : [],
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        child: widget.label,
      ),
    );
  }
}
