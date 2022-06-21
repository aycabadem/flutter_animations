import 'package:flutter/material.dart';

class TransformWidget extends StatefulWidget {
  TransformWidget({Key key}) : super(key: key);

  @override
  State<TransformWidget> createState() => _TransformWidgetState();
}

class _TransformWidgetState extends State<TransformWidget> {
  var _sliderDeger = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trasnform Widget'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          getSlider(),
          getRotate(),
          getScale(),
          getTranslate()
        ],
      ),
    );
  }

  Slider getSlider() {
    return Slider(
        value: _sliderDeger,
        min: 0.0,
        max: 100,
        onChanged: (yeniDeger) {
          setState(() {
            _sliderDeger = yeniDeger;
          });
        });
  }

  Container getRotate() {
    return Container(
      child: Transform.rotate(
        angle: _sliderDeger,
        //origin: Offset(_sliderDeger,0.0),
        child: Container(
          width: 100,
          height: 100,
          color: Colors.blue,
        ),
      ),
    );
  }

  Container getScale() {
    return Container(
      child: Transform.scale(
        scale: _sliderDeger == 0 ? 1 : _sliderDeger / 50,
        child: Container(
          width: 100,
          height: 100,
          color: Colors.pink,
        ),
      ),
    );
  }
  
  Container getTranslate() {
    return Container(
      child: Transform.translate(
       offset: Offset(_sliderDeger, 0.0),
        child: Container(
          width: 100,
          height: 100,
          color: Colors.cyan,
        ),
      ),
    );
  }
}
