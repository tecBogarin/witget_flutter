import 'package:flutter/material.dart';

abstract class WidgetScreen extends StatelessWidget {
  final String name;

  const WidgetScreen({super.key, required this.name});

  get getName => name;


  @override
  Widget build(BuildContext context);
}
