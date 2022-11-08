import 'package:flutter/material.dart';

class FadeAnimation extends StatelessWidget {
  const FadeAnimation(
      {Key? key,
      this.begin = 0,
      this.end = 1,
      this.duration = const Duration(milliseconds: 5000),
      this.intervalStart = 0,
      this.intervalEnd = 1,
      this.curve = Curves.fastOutSlowIn,
      required this.child})
      : super(key: key);
  final double begin; //default value 0
  final double end; //default value 1
  final Duration duration; //default is 750ms
  final double intervalStart; //default is 0
  final double intervalEnd; //default is 1
  final Curve curve; //default is Curves.fastOutSlowIn
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween<double>(begin: begin, end: end),
      duration: duration,
      curve: Interval(intervalStart, intervalEnd, curve: curve),
      child: child,
      builder: (BuildContext context, double? value, Widget? child) {
        return Opacity(
          opacity: value!,
          child: child,
        );
      },
    );
  }
}
