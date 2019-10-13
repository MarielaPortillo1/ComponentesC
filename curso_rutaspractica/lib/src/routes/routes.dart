import 'package:curso_rutaspractica/src/pages/alert_page.dart';
import 'package:curso_rutaspractica/src/pages/animated_container.dart';
//import 'package:curso_rutaspractica/src/pages/avatar_page.dart';
import 'package:curso_rutaspractica/src/pages/avatar_pages2.dart';
import 'package:curso_rutaspractica/src/pages/card_page.dart';
import 'package:curso_rutaspractica/src/pages/home_page.dart';
import 'package:curso_rutaspractica/src/pages/input_page.dart';
import 'package:curso_rutaspractica/src/pages/listview_page.dart';
import 'package:curso_rutaspractica/src/pages/slider_page.dart';
import 'package:flutter/material.dart';


Map<String, WidgetBuilder>getApplicationRoutes(){

  return<String, WidgetBuilder>{
      //pusNamed--indica el nombre de la ruta
      '/' :(BuildContext context)=>HomePage(),
      'alert':(BuildContext context)=>AlertPage(),
      //'avatar':(BuildContext context)=>AvatarPage(),
    'avatar':(BuildContext context)=>AvatarPAGES(),

    'card':(BuildContext context)=>CardPage(),
    'animatedContainer':(BuildContext context)=>AnimatedContainerPage(),
    'inputs':(BuildContext context)=>InputPage(),
    'slider':(BuildContext context)=> SliderPage(),
    'list': (BuildContext context)=> ListaPage(),


  };
}