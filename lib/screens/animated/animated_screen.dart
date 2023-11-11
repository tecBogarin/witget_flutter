import 'package:flutter/material.dart';
import 'dart:math' show Random;
import 'package:widgets_app/presentation/widgets/widgets.dart';

class AnimatedScreen extends StatefulWidget {
  static const name = 'animated_screen';
  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> with AppBarCustom {
  double width = 50;
  double height = 50;
  Color color = Colors.indigo;
  double borderRadius = 10.0;

  void changeShape() {
    final random = Random();
    setState(() {
      width = random.nextInt(300) + 120;
      height = random.nextInt(300) + 120;
      borderRadius = random.nextInt(100) + 20;
      color = Color.fromRGBO(
          random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWithReturnButton(title: 'Animated Container'),
      floatingActionButton: FloatingActionButton(
          onPressed: changeShape, child: const Icon(Icons.play_arrow_rounded)),
      body: _AnimatedView(width, height, color, borderRadius),
    );
  }
}

class _AnimatedView extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  final double borderRadius;

  const _AnimatedView(
    this.width,
    this.height,
    this.color,
    this.borderRadius,
  );

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 400),
        curve: Curves.bounceIn,
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
    );
  }
}
