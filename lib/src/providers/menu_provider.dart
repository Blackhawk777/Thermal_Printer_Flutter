import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class _MenuProvider {
   List<dynamic> opciones = [];

  _MenuProvider(){
  //  LoadData();
  }
  
 Future  <List <dynamic>> LoadData() async {
  
   final resp = await rootBundle.loadString('lib/data/menu_opts.json')
   .then((data){
     Map dataMap = json.decode(data);
    print(dataMap['rutas']);
    opciones=dataMap['rutas'];
   });

    return opciones;
  }


}

final menuProvider = new  _MenuProvider();