import 'package:flutter/material.dart';

mixin CustomSnackBars {
  void toShowSnackBarWithSnackBarAction(BuildContext context,
      {required Widget snackBarContent,
      required String labelSnackBarAction,
      required Function onPressedSnackBarAction}) {
    ScaffoldMessenger.of(context).clearSnackBars();

    final snackBar = SnackBar(
      content: snackBarContent,
      action: SnackBarAction(
          label: labelSnackBarAction, onPressed: () => onPressedSnackBarAction),
      duration: const Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void toShowSnackBarCustom(BuildContext context,
      {required Widget snackBarContent}) {
    ScaffoldMessenger.of(context).clearSnackBars();

    final snackBar = SnackBar(
      content: snackBarContent,
      duration: const Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
