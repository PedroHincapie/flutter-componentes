import 'package:flutter/material.dart';

class SliderPage3 extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage3> {
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
        padding: const EdgeInsets.only(top: 100.0),
        child: Column(
          children: <Widget>[
            _crearSlider(),
          ],
        ),
      ),
    );
  }

  Widget _crearSlider() {
    return SliderTheme(
      data: SliderTheme.of(context).copyWith(
        activeTrackColor: Colors.red[700],
        inactiveTrackColor: Colors.red[100],
        trackShape: RoundedRectSliderTrackShape(),
        trackHeight: 4.0,
        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
        thumbColor: Colors.redAccent,
        overlayColor: Colors.red.withAlpha(32),
        overlayShape: RoundSliderOverlayShape(overlayRadius: 28.0),
        tickMarkShape: RoundSliderTickMarkShape(),
        activeTickMarkColor: Colors.red[700],
        inactiveTickMarkColor: Colors.red[100],
        valueIndicatorShape: PaddleSliderValueIndicatorShape(),
        valueIndicatorColor: Colors.redAccent,
        valueIndicatorTextStyle: TextStyle(
          color: Colors.white,
        ),
      ),
      child: Slider(
          activeColor: Colors.pink,
          label: 'Bomvre',
          value: _valorDelSlider,
          max: 400.0,
          min: 150.0,
          onChanged: (valor) {
            setState(() {
              _valorDelSlider = valor;
            });
          }),
    );
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
