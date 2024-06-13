import 'package:dashboard_busbanz_practice/widgets/Animation-Circle/Circle-Content/circle_content.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class AnimationCircle extends StatefulWidget {
  const AnimationCircle({Key? key}) : super(key: key);

  @override
  _AnimationCircleState createState() => _AnimationCircleState();
}

class _AnimationCircleState extends State<AnimationCircle>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(
        milliseconds: 250,
      ),
      vsync: this,
    );

    _animation = Tween<double>(
      begin: 0.0,
      end: 0.9,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );

    _startAnimation();
  }

  void _startAnimation() {
    _timer = Timer.periodic(const Duration(milliseconds: 1775), (timer) async {
      if (!mounted) return;
      await _controller.forward();
      if (!mounted) return;
      _controller.duration = const Duration(milliseconds: 450);
      await _controller.reverse();
      if (!mounted) return;
      _controller.duration = const Duration(milliseconds: 300);
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const double maxOuterRadius = 70.0;
    const double minOuterRadius = 30.0;
    const double maxInnerRadius = 70.0;
    const double minInnerRadius = 20.0;

    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        double outerRadius = maxOuterRadius -
            (maxOuterRadius - minOuterRadius) * _animation.value;
        double innerRadius = minInnerRadius +
            (maxInnerRadius - minInnerRadius) * _animation.value;
        return CircleContent(
          outerRadius: outerRadius,
          innerRadius: innerRadius,
        );
      },
    );
  }
}
