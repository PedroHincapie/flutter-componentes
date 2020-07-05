import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorDelSlider = 200.0;
  double _valorDelSlider2 = 200.0;
  bool _bloquearSlider = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            _crearSlider(),
            Padding(
              padding: const EdgeInsets.only(
                  top: 40.0, left: 10.0, right: 10.0, bottom: 20.0),
              child: _crearImagen(),
            ),
            _crearCheckBox(),
            SizedBox(
              height: 60.0,
            ),
            _crearSlider2(),
          ],
        ),
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
        activeColor: Colors.indigoAccent,
        label: 'ssssssssssssssss',
        value: _valorDelSlider,
        max: 400.0,
        min: 150.0,
        onChanged: (_bloquearSlider)
            ? null
            : (valor) {
                setState(() {
                  _valorDelSlider = valor;
                });
              });
  }

  Widget _crearImagen() {
    return FadeInImage(
        fadeInDuration: Duration(milliseconds: 200),
        placeholder: AssetImage('assets/jar-loading.gif'),
        width: _valorDelSlider,
        fit: BoxFit.contain,
        image: NetworkImage(
            'https://enfilme.com/img/content/aef34739ab2cbfda14fc7a35fb012d3a38_675_489.jpg'));
  }

  Widget _crearCheckBox() {
//    return Checkbox(
//        activeColor: Colors.red,
//        value: _bloquearSlider,
//        onChanged: (valor) {
//          setState(() {
//            _bloquearSlider = valor;
//          });
//        });

    return CheckboxListTile(
        title: Text('Bloquer Slider'),
        value: _bloquearSlider,
        onChanged: (valor) {
          setState(() {
            _bloquearSlider = valor;
          });
        });
  }

  Widget _crearSlider2() {
    return Slider(
      activeColor: Colors.purple,
      label: 'aaaaaaaaa',
      value: _valorDelSlider2,
      onChanged: (value) {
        setState(() {
          _valorDelSlider2 = value;
        });
      },
      max: 500.0,
      min: 50.0,
    );
  }
}
