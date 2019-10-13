import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>_AnimatedContainerPage();

  }

  class _AnimatedContainerPage extends State<AnimatedContainerPage> {

    double _width = 50.0;
    double _height = 50.0;
    Color _color = Colors.pink;
    BorderRadiusGeometry _borderRadius = BorderRadius.circular(8.0);

    @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return Scaffold(
        appBar: AppBar(
          title: Text('Animated Container'),
        ),
        body: Center(
          child: AnimatedContainer(
            duration: Duration(seconds: 1),
            curve: Curves.fastOutSlowIn, //animaciones pregrabadas mas elegantes
            width: _width,
            height: _height,
            decoration: BoxDecoration(
                borderRadius: _borderRadius,
                color: _color
            ),
          ),
        ),
        floatingActionButton: FlatButton(
          child: Icon(Icons.play_arrow),
            onPressed: _CambiarForma,
        )
      );
    }

  
  void _CambiarForma() {
      
      final random =Random(); //paquete random que generara palabras colores random etc..

      setState(() {
        _width = random.nextInt(300).toDouble();
        _height =random.nextInt(300).toDouble();
        _color =Color.fromARGB(
            random.nextInt(255),
            random.nextInt(255),
            random.nextInt(255),
            1);
        _borderRadius =BorderRadius.circular(random.nextInt(100).toDouble());
      });
  }
}




