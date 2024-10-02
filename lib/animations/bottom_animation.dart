import 'dart:async';
import 'package:flutter/material.dart';

class Animator extends StatefulWidget {
  final Widget? child;
  final Duration time;

  const Animator({
    super.key,
    this.child,
    this.time = const Duration(milliseconds: 290), // Default time duration
  });

  @override
  _AnimatorState createState() => _AnimatorState();
}

class _AnimatorState extends State<Animator>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: widget.time, vsync: this);
    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeInOut);
    Timer(widget.time, _controller.forward); // Start animation after delay
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Opacity(
          opacity: _animation.value,
          child: Transform.translate(
            offset: Offset(0.0, (1 - _animation.value) * 20),
            child: widget.child,
          ),
        );
      },
    );
  }
}

class WidgetAnimator extends StatelessWidget {
  final Widget child;

  const WidgetAnimator({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Animator(child: child);
  }
}
