import 'package:credisis_demo/screens/TelaSecundaria.dart';
import 'package:credisis_demo/widgets/CustomDrawer.dart';
import 'package:flutter/material.dart';

class TelaPrincipal extends StatefulWidget {
  @override
  _TelaPrincipalState createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
//  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    final TextStyle _fontStyleNumber = TextStyle(
        fontSize: 14.0,
        color: Theme.of(context).primaryColor,
        fontWeight: FontWeight.bold);

    final TextStyle _fontStyleDescription = TextStyle(
      fontSize: 12.0,
      color: Colors.black,
    );

    final RaisedButton _buttom = RaisedButton(
      child: Column(
        children: <Widget>[
          Icon(Icons.trending_up, color: Theme.of(context).primaryColor),
          Text(
            "Aplicações",
            style: TextStyle(color: Theme.of(context).primaryColor),
          ),
        ],
      ),
      color: Theme.of(context).secondaryHeaderColor,
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => TelaSecundaria()));
      },
    );

    return Scaffold(
      drawer: CustomDrawer(/*_pageController*/),
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset("lib/images/logo2.png", scale: 0.15),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Container(
        color: Color(0xFFF9F9F9),
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
//            Text("Clique no menu"),
            Card(
              color: Theme.of(context).secondaryHeaderColor,
              margin: EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
//                    padding: EdgeInsets.all(12.0),
                    children: <Widget>[
                      Text(
                        "R\$ 1.500,18",
                        style: _fontStyleNumber,
                      ),
                      Text(
                        "Cheque Especial",
                        style: _fontStyleDescription,
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        "R\$ 1.900,16",
                        style: _fontStyleNumber,
                      ),
                      Text(
                        "Saldo C/C",
                        style: _fontStyleDescription,
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        "R\$ 9.500,11",
                        style: _fontStyleNumber,
                      ),
                      Text(
                        "Saldo Disponível",
                        style: _fontStyleDescription,
                      )
                    ],
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[_buttom, _buttom, _buttom],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[_buttom, _buttom, _buttom],
            ),
          ],
        ),
      ),
    );
  }
}
