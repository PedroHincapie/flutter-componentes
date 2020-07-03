import 'package:flutter/material.dart';

class HomeTempPage extends StatelessWidget {
  final List<String> opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('Componentes Temp'),
      ),
      body: ListView(
        children: _crearItemsCorta(),
      ),
    );
  }

  List<Widget> _crearItem() {
    List<Widget> lista = new List<Widget>();
    for (String opc in opciones) {
      final tempWidget = ListTile(
        title: Text(opc),
      );

      lista
        ..add(tempWidget)
        ..add(Divider(
          color: Colors.green,
        ));
    }

    return lista;
  }

  List<Widget> _crearItemsCorta() {
    return opciones
        .map((item) => Column(
              children: <Widget>[
                ListTile(
                  title: Text('$item !'),
                  subtitle: Text('Estas es la descripcion'),
                  leading: Icon(Icons.print),
                  trailing: Icon(Icons.arrow_right),
                  onTap: _estamosListos,
                ),
                Divider(
                  height: 10.0,
                  color: Colors.pink,
                )
              ],
            ))
        .toList();
  }

  void _estamosListos() {
    print('Estasmoas lo');
  }
}
