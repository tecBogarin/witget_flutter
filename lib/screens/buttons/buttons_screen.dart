import 'package:flutter/material.dart';
import 'package:widgets_app/presentation/widgets/widgets.dart';

class ButtonsScreen extends StatelessWidget with AppBarCustom {
  static const String screenName = 'button_screen';
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWithOutReturnButton(title: 'Buttons Screen'),
      body: const _ButtonsView(),
      floatingActionButton: const ButtonReturnPage(),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Wrap(
            spacing: 10,
            alignment: WrapAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {}, child: const Text('botón elevado')),
              const ElevatedButton(
                  onPressed: null, child: Text('botón deshabilitado')),
              ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.access_alarm_rounded),
                  label: const Text('icono elevado')),
              FilledButton(onPressed: () {}, child: const Text('Filled')),
              FilledButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.accessibility_new),
                  label: const Text('Filled icon')),
              OutlinedButton(onPressed: () {}, child: const Text('Outlined')),
              OutlinedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.terminal),
                  label: const Text('Outlined cost')),
              TextButton(onPressed: () {}, child: const Text('Text')),
              TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.account_box_outlined),
                  label: const Text('Outlined')),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.app_registration_rounded)),
              const CustomButton(),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.app_registration_outlined),
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(colors.primary),
                    iconColor: const MaterialStatePropertyAll(Colors.white)),
              ),
            ],
          ),
        ));
  }
}
