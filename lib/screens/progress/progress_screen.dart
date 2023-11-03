import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  static const screenName = 'progress_screen';
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Progress Indicators'),
        ),
        body: const _ProgressView());
  }
}

class _ProgressView extends StatelessWidget {
  const _ProgressView();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          SizedBox(height: 30),
          Text('Indicador de progreso circular ',style: TextStyle(fontSize: 16)),
          SizedBox(height: 20),
          CircularProgressIndicator( strokeWidth: 2,backgroundColor: Colors.black45),
           SizedBox(height: 30),
          Text('Indicador de progreso controlado ',style: TextStyle(fontSize: 16)),
          SizedBox(height: 20),
          _ControllersProgressIndicator()
        ],
      )
    );
  }
}

class _ControllersProgressIndicator extends StatelessWidget {
  const _ControllersProgressIndicator();

  @override
  Widget build(BuildContext context) {
    return const CircularProgressIndicator( strokeWidth: 2,backgroundColor: Colors.black45);
  }
}
