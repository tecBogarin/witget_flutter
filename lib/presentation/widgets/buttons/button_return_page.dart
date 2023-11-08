import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonReturnPage extends StatelessWidget {
  const ButtonReturnPage({super.key});

  @override
  Widget build(BuildContext context) => FloatingActionButton(
      onPressed: () {
        context.pop();
      },
      child: const Icon(Icons.arrow_back_ios_new_rounded));
}
