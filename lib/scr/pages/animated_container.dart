import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {
  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  static const int numero_300 = 300;

  double _width = 50.0;
  double _height = 50.0;
  Color _color = Colors.pink;

  BorderRadiusGeometry _borderRadiusGeometry = BorderRadius.circular(8.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Container'),
      ),
      body: Center(
        child: AnimatedContainer(
          height: _height,
          width: _width,
          decoration:
              BoxDecoration(color: _color, borderRadius: _borderRadiusGeometry),
          duration: Duration(milliseconds: 650),
          curve: Curves.decelerate,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _generarEvento,
        child: Icon(Icons.play_arrow),
      ),
    );
  }

  void _generarEvento() {
    setState(() {
      _width = _generarNumeroAleatorioDoubles(numero_300);
      _height = _generarNumeroAleatorioDoubles(numero_300);
      _color = Color.fromRGBO(_generarNumeroAleatorio(255),
          _generarNumeroAleatorio(255), _generarNumeroAleatorio(255), 1);
    });
  }

  double _generarNumeroAleatorioDoubles(int limite) =>
      Random().nextInt(limite).toDouble();

  int _generarNumeroAleatorio(int limite) => Random().nextInt(limite);
}
