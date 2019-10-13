import 'package:curso_rutaspractica/src/pages/alert_page.dart';
import 'package:curso_rutaspractica/src/provider/menu_provider.dart';
import 'package:curso_rutaspractica/src/utils/icono_string_util.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData:[],
      builder: (context, AsyncSnapshot<List<dynamic>>snapshot){

        return ListView(
          children:_listaItems(snapshot.data, context),


        );
      },
    );
  }
    List<Widget>_listaItems(List<dynamic> data, BuildContext context){
      final List<Widget> opciones =[];

      data.forEach((opt){
         final widgetTemp= ListTile(
           title: Text(opt['texto']),
           leading: getIcon(opt['icon']),
           trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue,),
           onTap: (){

            /* //Navegacion normal
             final route = MaterialPageRoute(
               builder: (context)=>AlertPage()
             );

             //navega en otras paginas
             //context --sabe cual pagina esta actual
             //ruta--la ruta ala que se navegara
             Navigator.push(context, route);*/

            //Navegar por rutas con String
             //pushNamed-- recibe una ruta atraves de un nombre
             Navigator.pushNamed(context, opt['ruta']);

           },
         );
        opciones..add(widgetTemp)
                  ..add(Divider());

      });
    return opciones;


    }

}

