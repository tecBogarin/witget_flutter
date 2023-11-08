import 'package:flutter/material.dart';

mixin AppBarCustom {
  AppBar appBarWithOutReturnButton({String title = 'no tiene Titulo'}) =>
      AppBar(
        title: Text(title),
        automaticallyImplyLeading:
            false, // Establece esto en false para ocultar el botón de retorno
      );
  AppBar appBarWithReturnButton({String title = 'no tiene Titulo'}) => AppBar(
        title: Text(
            title), // Establece esto en false para ocultar el botón de retorno
      );

}

