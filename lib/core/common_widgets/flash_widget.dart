import 'dart:async';

import 'package:flutter/material.dart';

class FlashingWidget extends StatefulWidget {
  const FlashingWidget({required this.child, super.key});

  final Widget child;

  @override
  State<FlashingWidget> createState() => _FlashingWidgetState();
}

class _FlashingWidgetState extends State<FlashingWidget>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;
  Timer? _timer;

  Future<void> _startScrolling() async {
    _animationController.repeat(reverse: true);
  }

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );
    _startScrolling();
    super.initState();
  }

  @override
  void dispose() {
    _timer?.cancel();
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animationController,
      child: widget.child,
    );
  }
}
