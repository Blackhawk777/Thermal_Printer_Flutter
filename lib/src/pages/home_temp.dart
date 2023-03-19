import 'package:flutter/material.dart';


class HomePageTemp extends StatelessWidget {
  final opciones = ['uno', 'dos'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Componentes"),
      ),
      body: ListView(
       // children: _createItems()
        children: _createItemscorta()
      ),
    );
  }

  List < Widget > _createItems() {
    List < Widget > lista = < Widget > [];

    for (String opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
      );
      lista..add(tempWidget)..add(Divider());
    }

    return lista;
  }

  List <Widget> _createItemscorta() {
    var widgets = opciones.map((item) {
      return ListTile(
        title: Text('$item!'),
        leading: Icon(Icons.ac_unit_outlined),
        trailing: Icon(Icons.arrow_right_sharp),
        onTap:AboutDialog.new,
      );

    }).toList();
    return widgets;


  }

}