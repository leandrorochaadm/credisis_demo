import 'package:credisis_demo/screens/TelaPrincipal.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  final double _paddingBotton = 12.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(27.0),
//        color: Theme.of(context).primaryColor,
        decoration: BoxDecoration(color: Theme.of(context).primaryColor),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.all(0.0),
                      child: Image.asset("lib/images/logo2.png")),
                  Padding(
                    padding: EdgeInsets.only(bottom: _paddingBotton),
                    child: TextField(
                      autofocus: true,
                      keyboardType: TextInputType.number,
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Theme.of(context).secondaryHeaderColor),
                      decoration: InputDecoration(
                        labelText: "Agência",
                        labelStyle: TextStyle(
                            color: Theme.of(context).secondaryHeaderColor),
                        contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                        border: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Theme.of(context).secondaryHeaderColor)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: _paddingBotton),
                    child: TextField(
                      autofocus: true,
                      keyboardType: TextInputType.number,
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Theme.of(context).secondaryHeaderColor),
                      decoration: InputDecoration(
                        labelText: "Conta",
                        labelStyle: TextStyle(
                            color: Theme.of(context).secondaryHeaderColor),
                        contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                        border: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Theme.of(context).secondaryHeaderColor)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: _paddingBotton),
                    child: TextField(
                      autofocus: true,
                      keyboardType: TextInputType.number,
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Theme.of(context).secondaryHeaderColor),
                      decoration: InputDecoration(
                        labelText: "Usuário",
                        labelStyle: TextStyle(
                            color: Theme.of(context).secondaryHeaderColor),
                        contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                        border: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Theme.of(context).secondaryHeaderColor)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: _paddingBotton),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Lembrar-me",
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Theme.of(context).secondaryHeaderColor),
                        ),
                        Switch(
                            value: false,
                            onChanged: (bool state) {
                              print(state);
                            }),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 16.0),
                    child: RaisedButton(
                        child: Text(
                          "Acessar",
                          style: TextStyle(color: Colors.black, fontSize: 16.0),
                        ),
                        padding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                        color: Theme.of(context).secondaryHeaderColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32.0)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TelaPrincipal()));
                        }),
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
