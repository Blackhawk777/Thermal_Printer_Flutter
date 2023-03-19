import 'package:flutter/material.dart';

import '../providers/menu_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key
  });

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

    // menuProvider.cargarData()
    return FutureBuilder(
      future: menuProvider.LoadData(),
      initialData: [],
      builder: ( context, AsyncSnapshot<List<dynamic>> snapshot ){

        return ListView(
          children: _listaItems( snapshot.data, context ),
        );

      },
    );

  

    

  }

  List<Widget> _listaItems(  data, BuildContext context ) {

    final List<Widget> opciones = [];


    data.forEach( (opt) {

      final widgetTemp = ListTile(
        title: Text( opt['texto'] ),
       // leading:  getIcon( opt['icon'] ) ,
        trailing: Icon ( Icons.keyboard_arrow_right, color: Colors.blue ),
        onTap: () {

      //    Navigator.pushNamed(context, opt['ruta'] );

          // final route = MaterialPageRoute(
          //   builder: ( context )=> AlertPage()
          // );

          // Navigator.push(context, route);

        },
      );

      opciones..add( widgetTemp )
              ..add( Divider() );

    });

    return opciones;

  }

}