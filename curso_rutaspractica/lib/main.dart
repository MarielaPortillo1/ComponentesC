import 'package:curso_rutaspractica/src/pages/alert_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:curso_rutaspractica/src/pages/home_page.dart';
import 'package:curso_rutaspractica/src/routes/routes.dart';
import 'package:flutter/material.dart';

void main ()=> runApp(MyApp());

class MyApp  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', 'US'), // English
        const Locale('es', 'ES'), // Hebrew
      ],

      title: 'Componentes App',
      //home: HomePage(),

      //ruta con la que inicializa la aplicacion
      initialRoute: '/',
      routes: getApplicationRoutes(),
      //generar la ruta
      onGenerateRoute: (RouteSettings settings){
        return MaterialPageRoute(
          builder: (BuildContext context)=>HomePage()
        );
      },
    );
  }
}


