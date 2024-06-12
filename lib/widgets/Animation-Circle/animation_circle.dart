import 'package:dashboard_busbanz_practice/config/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AnimationCircle extends StatefulWidget {
  const AnimationCircle({Key? key}) : super(key: key);

  @override
  _AnimationCircleState createState() => _AnimationCircleState();
}

class _AnimationCircleState extends State<AnimationCircle>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 275),
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

  void _startAnimation() async {
    while (true) {
      await _controller.forward();
      _controller.duration = const Duration(milliseconds: 450);
      await _controller.reverse();
      _controller.duration = const Duration(
        milliseconds: 300,
      );
      await Future.delayed(
        const Duration(
          milliseconds: 750,
        ),
      );
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Center(
        child: AnimatedBuilder(
          animation: _animation,
          builder: (context, child) {
            double outerRadius = 70 - 40 * _animation.value;
            double innerRadius = 30 + 40 * _animation.value;
            return Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: outerRadius * 2,
                  height: outerRadius * 2,
                  decoration: BoxDecoration(
                    color: AppColors.secondary.withOpacity(
                      0.2,
                    ),
                    shape: BoxShape.circle,
                  ),
                ),
                Container(
                  width: innerRadius * 1,
                  height: innerRadius * 2,
                  decoration: const BoxDecoration(
                    color: AppColors.secondary,
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
