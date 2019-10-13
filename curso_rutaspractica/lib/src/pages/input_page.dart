import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _nombre = '';
  String _correo='';
  String _fecha='';
  String _opcionSeleccionada ='Volar';

  List<String>_poderes = ['Volar','Rayos x','Super Aliento','Super Fuerza'];

  TextEditingController _inputFieldDateController = new TextEditingController(); //cabiar propiedades de forma dinamica

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs de texto'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: <Widget>[
          _crearInput(),
          Divider(),
          _crearEmail(),
          Divider(),
          _crearPassword(),
          Divider(),
          _crearFecha(context),
          Divider(),
          _crearDropdown(),
          Divider(),
          _crearPersona()
        ],
      ),
    );
  }

    Widget _crearInput() {

    return TextField(
    //  autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        counterText:('Letras ${_nombre.length}'),
        hintText: 'Nombre de la persona',
        labelText: 'Nombre',
        helperText: 'Solo es el nombre',
        suffixIcon: Icon(Icons.accessibility),
        icon: Icon(Icons.account_circle)
         ),
      onChanged: (valor){ //muestra en tiempo real lo que se esta escribiendo
       setState(() { //buncion cuando se tiene que redibujar el estado
         _nombre = valor;
       });

      },
      );

  }

  Widget _crearPersona() {
    return ListTile(
      title: Text('Nombre es: $_nombre'),
      subtitle: Text('Email: $_correo'),
     trailing: Text(_opcionSeleccionada),
     // trailing: Text(_opcionSeleccionada),
    );
  }

 Widget _crearEmail() {

    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0)
          ),
          hintText: 'ejemplo@gmail.com',
          labelText: 'Email',
          helperText: 'Correo actual',
          suffixIcon: Icon(Icons.alternate_email),
          icon: Icon(Icons.email)
      ),
      onChanged: (valor){ //muestra en tiempo real lo que se esta escribiendo
        setState(() { //buncion cuando se tiene que redibujar el estado
          _correo = valor;
        });

      },
    );

 }

 Widget _crearPassword() {
   return TextField(
     obscureText: true,
     decoration: InputDecoration(
         border: OutlineInputBorder(
             borderRadius: BorderRadius.circular(20.0)
         ),
         hintText: 'contrasena',
         labelText: 'contrasena',
         helperText: 'Contrasena',
         suffixIcon: Icon(Icons.lock),
         icon: Icon(Icons.lock)
     ),
     onChanged: (valor){ //muestra en tiempo real lo que se esta escribiendo
       setState(() { //buncion cuando se tiene que redibujar el estado
         _correo = valor;
       });

     },
   );
 }

  Widget _crearFecha(BuildContext context) {
    return TextField(
      enableInteractiveSelection: false,
      controller: _inputFieldDateController,
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0)
          ),
          hintText: 'Fecha Nacimiento',
          labelText: 'Fecha Nacimiento',
          helperText: 'Fecha Nacimiento',
          suffixIcon: Icon(Icons.perm_contact_calendar),
          icon: Icon(Icons.calendar_today)
      ),
      onTap: (){
        FocusScope.of(context).requestFocus(new FocusNode()); //quita la seleccion
        _selectDate(context); //llama la funcion para selecionar calendario


      } ,
    );

  }

   _selectDate(BuildContext context) async {
    DateTime picked = await showDatePicker(
      context: context,
      initialDate: new DateTime.now(),
      firstDate: new DateTime(2018),
      lastDate: new DateTime(2025),
     // locale: Locale('es', 'Es'),

   );
      if(picked !=null){
        setState(() {
          _fecha= picked.toString();
          _inputFieldDateController.text =_fecha;
        });
      }

  }

  List<DropdownMenuItem<String>>getOpcionesDropdown(){

    List<DropdownMenuItem<String>> lista = new List();
    _poderes.forEach((poder){
      lista.add(DropdownMenuItem(
        child: Text(poder),
        value: poder,
      ));
    });
    return lista;
    
}
 Widget _crearDropdown() {

    return Row(
      children: <Widget>[
        Icon(Icons.select_all),
        SizedBox(width: 30.0, ),
        Expanded(
         child: DropdownButton(
          //valor actual de la opcion seleccionada
          value: _opcionSeleccionada,
          items:getOpcionesDropdown(),
          onChanged: (opt){
            setState(() {
              _opcionSeleccionada=opt;
            });
          },

        )
        )

      ],
    );
 }



}
