import 'package:credisis_demo/screens/TelaSecundaria.dart';
import 'package:credisis_demo/widgets/CustomDrawer.dart';
import 'package:flutter/material.dart';

class TelaPrincipal extends StatefulWidget {
  @override
  _TelaPrincipalState createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        title: Text("Primeira Tela"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: <Widget>[
            RaisedButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=> TelaSecundaria()));
                },
              padding: EdgeInsets.all(15),
            ),
          ],
        ),
      ) ,
    );
  }
}
