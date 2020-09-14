import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart'; //importa todos widgets

void main() {
  runApp(MaterialApp(
      title: "Contador de Pessoas",
      home: Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
 int people=0;
 String infoText= "Pode entrar!";
 void changePeople(int delta){
setState(() {
  people+=delta;

  if(people<0){
    infoText="Mundo Invertido?";
  }else if(people<=10){
    infoText="Pode entrar!";
  }else{
    infoText="Lotado!";

  }
});
 }
  @override
  Widget build(BuildContext context) {
    return Column(//permite que coloque um widget em cima do outro na vertical
      mainAxisAlignment: MainAxisAlignment.center,//alinhamento para coluna
      children: <Widget>[
        Text("Pessoas: $people",
          style:
          TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(10.0),
              child: FlatButton(
                child: Text("+1",
                    style: TextStyle(fontSize: 40.0,
                        color: Colors.white)),
                onPressed:(){changePeople(1);} ,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: FlatButton(
                child: Text("-1",
                    style: TextStyle(fontSize: 40.0,
                        color: Colors.white)),
                onPressed:(){changePeople(-1);} ,
              ),
            ),
          ],
        ),
        Text(infoText,
          style:
          TextStyle(
              color: Colors.white,
              fontStyle: FontStyle.italic,
              fontSize: 30.0),
        ),
      ],
    );
  }
}

