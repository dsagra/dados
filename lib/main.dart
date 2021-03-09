import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.green,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Tirar Dados'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  int numeroDado=1;
  int cantidadDeDados=2;
  double tamanoDado=100;
  List<int> dados=[1,1,1,1,1,1];
  
  int cantidad;
  int resultado;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      backgroundColor: Colors.green[700],
      body: Center(
         child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('Seleccione cantidad de dados',style: TextStyle(fontSize: 25,color: Colors.white),),
            SizedBox(height: 20,), 
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(child: FlatButton(onPressed: () =>cambiarCantDados(1),child:  Image.asset('assets/img/1.png'),),width: 60),
                SizedBox(child: FlatButton(onPressed: () =>cambiarCantDados(2),child:  Image.asset('assets/img/2.png'),),width: 60),
                SizedBox(child: FlatButton(onPressed: () =>cambiarCantDados(3),child:  Image.asset('assets/img/3.png'),),width: 60),
                SizedBox(child: FlatButton(onPressed: () =>cambiarCantDados(4),child:  Image.asset('assets/img/4.png'),),width: 60),
                SizedBox(child: FlatButton(onPressed: () =>cambiarCantDados(5),child:  Image.asset('assets/img/5.png'),),width: 60),
                SizedBox(child: FlatButton(onPressed: () =>cambiarCantDados(6),child:  Image.asset('assets/img/6.png'),),width: 60),
              ],
            ),
             SizedBox(height: 100,),
           Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: [
               
             for (var i = 0; i < cantidadDeDados; i++)              
                Container(child: Image.asset('assets/img/${dados[i]}.png'),width: tamanoDado,),
             
           ]),
           Padding(
             padding: const EdgeInsets.all(20.0),
             child: Text('Usted obtuvo $resultado puntos',style: TextStyle(fontSize: 25,color: Colors.white),),
           ),
           
           
      RaisedButton(
        onPressed: () =>cambiarNumero(),color: Colors.white,
                child: Text('TIRAR DADOS'),
      ), 
          ],
        ),
      ),
      
    );
  }

cambiarCantDados(int numero){
  cantidadDeDados=numero;
  tamanoDado=300/cantidadDeDados;
  if (numero==1 || numero==2){
    tamanoDado=100;
  }
 // for (var i = 0; i < numero; i++) {
 // dados[i]=1;
 // }
setState(() {
  
});
}

cambiarNumero(){
  resultado=0;
  for (var i = 0; i < cantidadDeDados; i++) {
    do{
      numeroDado=Random().nextInt(7);
      } while (numeroDado==0);
      dados[i]=numeroDado;
     resultado=resultado+numeroDado;

  }

        
setState(() {
        
      });  
     
    
  
  
}



}
