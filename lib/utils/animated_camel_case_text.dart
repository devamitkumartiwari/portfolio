import 'package:flutter/material.dart';

class AnimatedCamelCaseText extends StatefulWidget {
  final String text;
  final Color backgroundColor;
  final TextStyle? textStyle;

  const AnimatedCamelCaseText({
    super.key,
    required this.text,
    this.backgroundColor = const Color.fromRGBO(255, 255, 255, 0.15),
    this.textStyle,
  });

  @override
  State<AnimatedCamelCaseText> createState() => _AnimatedCamelCaseTextState();
}

class _AnimatedCamelCaseTextState extends State<AnimatedCamelCaseText>
    with TickerProviderStateMixin {
  late final List<String> _words;
  late final List<AnimationController> _controllers;
  late final List<Animation<double>> _animations;
  // Pre-built static children — not rebuilt on each animation tick
  late final List<Widget> _wordWidgets;

  @override
  void initState() {
    super.initState();
    _words = widget.text.split(' ');

    _controllers = _words.map((_) {
      return AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: 600),
      );
    }).toList();

    _animations = _controllers.map((controller) {
      return CurvedAnimation(parent: controller, curve: Curves.easeOut);
    }).toList();

    _wordWidgets = List.generate(_words.length, (i) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color: widget.backgroundColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(_words[i], style: widget.textStyle),
      );
    });

    for (int i = 0; i < _controllers.length; i++) {
      Future.delayed(Duration(milliseconds: i * 300), () {
        if (mounted) _controllers[i].forward();
      });
    }
  }

  @override
  void dispose() {
    for (final controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: List.generate(_words.length, (i) {
        // FadeTransition composites on the GPU layer — child never rebuilt
        return FadeTransition(
          opacity: _animations[i],
          child: _wordWidgets[i],
        );
      }),
    );
  }
}
