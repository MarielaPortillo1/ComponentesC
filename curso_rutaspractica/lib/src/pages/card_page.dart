import 'package:flutter/material.dart';

class CardPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text('Cards'),
     ),
     body: ListView(
       padding: EdgeInsets.all(10.0),
       children: <Widget>[
         _cardTipo1(),
         SizedBox(height: 30.0,),
         _cardTipo2(),
         SizedBox(height: 30.0,),
         _cardTipo1(),
         SizedBox(height: 30.0,),
         _cardTipo2(),
         SizedBox(height: 30.0,),
         _cardTipo1(),
         SizedBox(height: 30.0,),
         _cardTipo2(),
         SizedBox(height: 30.0,),
       ],
     ),
     floatingActionButton: FloatingActionButton(
       child: Icon(Icons.arrow_back),
       onPressed: (){
         Navigator.pop(context);
       },
     ),
   );
  }
  Widget _cardTipo1(){
    return Card(
      elevation: 10.0, //sombreado de la tarjeta
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)), //borde de la card personalizado  o sombra

      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue,),
           title: Text('Soy el titulo de la tarjeta '),
            subtitle: Text('Texto sumamente grande para el ejemplo de las tarjetas o card ') ,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Ok'),
                onPressed: (){
                },
              ),
              FlatButton(
                child: Text('Cancelar'),
                onPressed: (){

                },
              )
            ],
          ),
        ],
      ),
      
    );
  }
  Widget _cardTipo2(){

     final card= Container(
      child: Column(
        children: <Widget>[
          
          FadeInImage(
            
            image: NetworkImage('https://static.photocdn.pt/images/articles/2017_1/iStock-545347988.jpg'), //imagen con su ruta
            placeholder: AssetImage('assets/jar-loading.gif'),//propiedad para cargar antes la imagen con la ruta
            fadeInDuration: Duration(milliseconds: 10),// duracion que se le indique para cargar imagen
            height: 300.0,  // alto de la imagen
            fit: BoxFit.cover, //propiedad indica el espacio que ocupa la imagen

          ),
          
          Container(
            padding: EdgeInsets.all(10.0),
             child: Text('Imagen muestra segunda tarjeta')
          )
        ],
      ),
    );

     return Container(
       decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(30.0),
        color: Colors.white,
         boxShadow: <BoxShadow>[
           BoxShadow(
             color: Colors.black26,
             blurRadius: 10.0,
             spreadRadius: 2.0,  //cuanto se expande
             offset:Offset(2.0, 10.0)  //posicion de imagen de la sombra
           )
         ]
       ),
         child: ClipRRect(
           borderRadius: BorderRadius.circular(30.0),
           child: card
         )
     );
  }
}
