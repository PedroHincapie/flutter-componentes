import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  final colorIconos = Colors.purple;

  String _nombre = '';
  String _email = '';

  int _tamanoNombre = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input de Texto'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: <Widget>[
          _crearInput(),
          Divider(),
          _crearCorreo(),
          Divider(),
          _crearPassword(),
          Divider(),
          _crearPersona(),
        ],
      ),
    );
  }

  Widget _crearInput() {
    return TextField(
      cursorColor: Colors.red,
      enabled: true,
      textCapitalization: TextCapitalization.words,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
        counter: Text('# Letras $_tamanoNombre'),
        hintText: 'Nombre de la persona',
        labelText: 'Nombre',
        helperText: 'Sólo es el nombre',
        suffixIcon: Icon(
          Icons.accessibility,
          color: colorIconos,
        ),
        prefixIcon: Icon(Icons.input, color: colorIconos),
        icon: Icon(Icons.account_circle, color: colorIconos),
      ),
      onTap: () {
        print('Pedro onTap');
      },
      onChanged: (valor) {
        setState(() {
          _nombre = valor;
          _tamanoNombre = _nombre.length;
        });
      },
    );
  }

  Widget _crearCorreo() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      cursorColor: Colors.purple,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
        hintText: 'Email',
        labelText: 'Email',
        suffixIcon: Icon(
          Icons.alternate_email,
          color: colorIconos,
        ),
        icon: Icon(Icons.email, color: colorIconos),
      ),
      onChanged: (valor) => setState(() {
        _email = valor;
      }),
    );
  }

  Widget _crearPassword() {
    return TextField(
      obscureText: true,
      cursorColor: Colors.purple,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
        hintText: 'Password',
        labelText: 'Password',
        suffixIcon: Icon(
          Icons.lock,
          color: colorIconos,
        ),
        icon: Icon(Icons.lock_outline, color: colorIconos),
      ),
      onChanged: (valor) => setState(() {
        _email = valor;
      }),
    );
  }

  Widget _crearPersona() {
    return ListTile(
      subtitle: Text('${_email.length == 0 ? '' : 'El email es $_email'}'),
      title: Text('${_nombre.length == 0 ? '' : 'El nombre es $_nombre'}'),
    );
  }
}
