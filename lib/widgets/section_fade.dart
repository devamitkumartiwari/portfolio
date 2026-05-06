import 'package:flutter/material.dart';

/// Plays a one-shot fade + subtle upward slide when first inserted into the tree.
/// Uses [FadeTransition] + [SlideTransition] so the child widget tree is never
/// rebuilt during the animation — only composited on the GPU.
class SectionFadeIn extends StatefulWidget {
  final Widget child;
  final Duration delay;

  const SectionFadeIn({
    super.key,
    required this.child,
    this.delay = Duration.zero,
  });

  @override
  State<SectionFadeIn> createState() => _SectionFadeInState();
}

class _SectionFadeInState extends State<SectionFadeIn>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _opacity;
  late final Animation<Offset> _slide;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );
    _opacity = CurvedAnimation(parent: _controller, curve: Curves.easeOut);
    _slide = Tween<Offset>(
      begin: const Offset(0, 0.06),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    if (widget.delay == Duration.zero) {
      _controller.forward();
    } else {
      Future.delayed(widget.delay, () {
        if (mounted) _controller.forward();
      });
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _opacity,
      child: SlideTransition(
        position: _slide,
        child: widget.child,
      ),
    );
  }
}
