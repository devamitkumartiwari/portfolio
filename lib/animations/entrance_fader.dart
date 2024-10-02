import 'package:flutter/material.dart';

class EntranceFader extends StatefulWidget {
  /// Child to be animated on entrance
  final Widget child;

  /// Delay after which the animation will start
  final Duration delay;

  /// Duration of entrance animation
  final Duration duration;

  /// Starting point from which the widget will fade to its default position
  final Offset offset;

  const EntranceFader({
    super.key,
    required this.child,
    this.delay = Duration.zero,
    this.duration = const Duration(milliseconds: 400),
    this.offset = const Offset(0.0, 32.0),
  });

  @override
  EntranceFaderState createState() => EntranceFaderState();
}

class EntranceFaderState extends State<EntranceFader>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _opacityAnimation;
  late final Animation<Offset> _offsetAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: widget.duration)
      ..forward();

    _opacityAnimation =
        Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
    _offsetAnimation = Tween<Offset>(begin: widget.offset, end: Offset.zero)
        .animate(_controller);

    // Start the animation after the specified delay
    Future.delayed(widget.delay, () {
      if (mounted) {
        _controller.forward();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _offsetAnimation,
      child: FadeTransition(
        opacity: _opacityAnimation,
        child: widget.child,
      ),
    );
  }
}
