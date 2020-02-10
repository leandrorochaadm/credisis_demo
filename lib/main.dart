import 'package:credisis_demo/TelaSecundaria.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: TelaPrincipal()));

class TelaPrincipal extends StatefulWidget {
  @override
  _TelaPrincipalState createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela Principal"),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: <Widget>[
            RaisedButton(
              padding: EdgeInsets.all(14),
              onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TelaSecundaria()));
                  },
            ),
          ],
        ),
      ) ,
    );
  }
}
