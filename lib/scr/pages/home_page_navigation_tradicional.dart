 import 'package:componentes/scr/pages/avatar_page.dart';
import 'package:componentes/scr/providers/menu_provider.dart';
import 'package:componentes/scr/utils/icono_string_util.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('Componentes'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _listaItems(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _listaItems(List<dynamic> data, BuildContext context) {
    final List<Widget> opciones = [];

    data.forEach((element) {
      final widgetTemp = ListTile(
        title: Text(
          element['texto'],
          style: TextStyle(fontSize: 20.2, color: Colors.pink),
        ),
        leading: obtenerIcono(element['icon']),
        trailing: Icon(Icons.arrow_right),
        onTap: () {
          final route = MaterialPageRoute(
            builder: (context) => AvatarPage(),
          );

          Navigator.push(context, route);
        },
      );
      opciones..add(widgetTemp)..add(Divider());
    });

    return opciones;
  }
}
