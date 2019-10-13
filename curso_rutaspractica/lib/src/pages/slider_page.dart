import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 100.0;
  bool _bloquearCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Container(
        //mover el objeto de acuerdo a la propiedad indicada
        padding: EdgeInsets.only(top: 50.0),
       child: Column(
         children: <Widget>[
           _crearSlider(),
            __crearCheckbox(),
           _crearSwitch(),
           Expanded(
             child: _crearImagen(),
           ),

         ],
       ),
      ),
    );
  }

 Widget _crearSlider() {
       return Slider(
          activeColor: Colors.indigoAccent,
           label:  'Grande' ,
          // divisions: 20,
  
           value: _valorSlider,
           min: 10.0,
            max: 400.0,
          //recibe valor del slider
          //condicion que si bloquearCheck es true devuelva null
          // caso contrario evalua el valor que se esta mandando o asignando
          onChanged: (_bloquearCheck) ? null :(valor){
  
             setState(() {
               _valorSlider=valor;
             });
          },
        );
      //otra forma de hacer listCheckbox

 }

 Widget _crearImagen() {

return Image(
   image: NetworkImage('http://pngimg.com/uploads/batman/batman_PNG111.png'),
  width: _valorSlider,
  fit: BoxFit.contain,

);

 }


 Widget  __crearCheckbox() {

    /*return Checkbox(
      value: _bloquearCheck,
      onChanged:(valor){
        setState(() {
          _bloquearCheck=valor;
        });

      } ,
    );*/
   return CheckboxListTile(
       title: Text('Bloquear Slider'),
       value: _bloquearCheck,
       onChanged:(valor){
         setState(() {
           _bloquearCheck=valor;
         });
       }
   );


  }

 Widget _crearSwitch() {

   return SwitchListTile(
       title: Text('Bloquear Slider Switch'),
   value: _bloquearCheck,
   onChanged:(valor){
   setState(() {
   _bloquearCheck=valor;
   });
   }
   );

 }
}

