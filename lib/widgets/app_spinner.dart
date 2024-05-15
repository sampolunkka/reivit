import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class ForegroundAnimation extends StatefulWidget {
  const ForegroundAnimation({super.key});

  @override
  State<ForegroundAnimation> createState() => _ForegroundAnimationState();
}

class _ForegroundAnimationState extends State<ForegroundAnimation>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(milliseconds: 500),
    vsync: this,
  )..repeat(reverse: true);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  late final animation = Tween(begin: 0.0, end: 2.0).animate(
    CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOutSine,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      AnimatedBuilder(
          animation: animation,
          child: Image.asset('assets/images/loading-icon-foreground.png'),
          builder: (BuildContext context, Widget? child) {
            return Transform.translate(
              offset: Offset(0, 10 * animation.value),
              child: child,
            );
          })
    ]);
  }
}

class BackgroundAnimation extends StatefulWidget {
  const BackgroundAnimation({super.key});

  @override
  State<BackgroundAnimation> createState() => _BackgroundAnimationState();
}

class _BackgroundAnimationState extends State<BackgroundAnimation>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(

    duration: const Duration(milliseconds: 500),
    vsync: this,
  )..repeat(reverse: true);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  late final animation = Tween(begin: 0.0, end: 2.0).animate(
    CurvedAnimation(
      parent: _controller,
      curve: Curves.linear,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      AnimatedBuilder(
          animation: animation,
          child: Image.asset('assets/images/loading-icon-background.png'),
          builder: (BuildContext context, Widget? child) {
            return Transform.translate(
              offset: Offset(0, 10 * animation.value),
              child: child,
            );
          })
    ]);
  }
}

class AppSpinner extends StatelessWidget {
  const AppSpinner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration:  BoxDecoration(
        color: AppColors.surfaceElevated,
        borderRadius: BorderRadius.circular(20),
      ),
      width: 100,
      height: 100,
        child: const Stack(children: [
      BackgroundAnimation(),
      ForegroundAnimation(),
    ]));
  }
}
