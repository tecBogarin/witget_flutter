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
        Text('Indicador de progreso circular ', style: TextStyle(fontSize: 16)),
        SizedBox(height: 20),
        CircularProgressIndicator(
            strokeWidth: 2, backgroundColor: Colors.black45),
        SizedBox(height: 30),
        Text('Indicador de progreso controlado ',
            style: TextStyle(fontSize: 16)),
        SizedBox(height: 20),
        _ControllersProgressIndicator()
      ],
    ));
  }
}

class _ControllersProgressIndicator extends StatelessWidget {
  const _ControllersProgressIndicator();

  double progressCondition(int value) => (value * 2) / 100;
  bool progressLimit(double value) => value < 100;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream:
          Stream.periodic(const Duration(milliseconds: 300), progressCondition)
              .takeWhile(progressLimit),
      builder: (context, snapshot) =>
          progressIndicatorCustom(snapshot.data ?? 0),
    );
  }

  Widget progressIndicatorCustom(double progressValue) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            circularProgressCustom(progressValue),
            const SizedBox(
              width: 20,
            ),
            Expanded(
                child: LinearProgressIndicator(
              value: progressValue,
            ))
          ],
        ),
      );

  Widget circularProgressCustom(double progressValue) =>
      CircularProgressIndicator(
          value: progressValue,
          strokeWidth: 2,
          backgroundColor: Colors.black12);
}
