import 'package:credisis_demo/screens/TelaSecundaria.dart';
import 'package:credisis_demo/widgets/CustomDrawer.dart';
import 'package:flutter/material.dart';

class TelaPrincipal extends StatefulWidget {
  @override
  _TelaPrincipalState createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  _TelaPrincipalState();

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

    final _boxDecoration = BoxDecoration(
      color: Theme.of(context).secondaryHeaderColor,
      borderRadius: BorderRadius.all(Radius.circular(3)),
      boxShadow: [BoxShadow(
          color: Colors.black12,
          offset: Offset(5.0, 2.0),
          blurRadius: 5.0,
          spreadRadius: 1),
      ],
    );

    Widget _buttom(IconData icon, String label) {
      return Container(
        decoration: _boxDecoration,
        width: 110,
        margin: EdgeInsets.only(bottom: 5),
        child: GestureDetector(
          child: Column(
            children: <Widget>[
              Icon(icon, color: Theme.of(context).primaryColor),
              Text(
                label,
                style: TextStyle(color: Theme.of(context).primaryColor),
              ),
            ],
          ),
//          color: Theme.of(context).secondaryHeaderColor,
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => TelaSecundaria()));
          },
        ),
      );
    }

    Row _transation(IconData icon, Color color, String description, String date,
        String value) {
      return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(12.0, 12.0, 12.0, 24.0),
              child: Container(
                  padding: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, border: Border.all(color: color)),
                  child: Icon(
                    icon,
                    size: 30.0,
                    color: color,
                  )),
            ),
            Container(
              width: 160.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(description),
                  Text(date),
                  Text(
                    "R\$ " + value,
                    style: TextStyle(color: Colors.red),
                  ),
                ],
              ),
            ),
//          Padding(
//            padding: EdgeInsets.only(bottom: 12.0),
//          )
            FlatButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TelaSecundaria()));
                },
                child: Icon(Icons.more_vert)),
          ]);
    }



    return Scaffold(
      drawer: CustomDrawer(/*_pageController*/),
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset("lib/images/logo.png", height: 45,),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Container(
        color: Color(0xFFF9F9F9),
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Container(
              decoration: _boxDecoration,
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.only(bottom: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Leandro Rocha",
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0),
                  ),
                  Icon(
                    Icons.notifications,
                    size: 20.0,
                  )
                ],
              ),
            ),
//            Text("Clique no menu"),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  decoration: _boxDecoration,
                padding: EdgeInsets.all(12),
                margin: EdgeInsets.only(bottom: 12.0),
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
                  children: <Widget>[
                    _buttom(Icons.receipt, "Extrato"),
                    _buttom(Icons.swap_horiz, "Transferência"),
                    _buttom(Icons.trending_up, "Aplicações")
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    _buttom(Icons.crop_free, "QR-code"),
                    _buttom(Icons.attach_money, "Pagamentos"),
                    _buttom(Icons.call, "Recarga")
                  ],
                ),
              ],
            ),

            Container(
              margin: EdgeInsets.only(top: 12),
              decoration: _boxDecoration,
              child: Column(
//                scrollDirection: Axis.vertical,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Últimas  transações"),

                  _transation(Icons.arrow_downward, Color(0xFFF53535),
                      "SAQUE ATM 8845112011", "12/02/20", "440,00"),
                  _transation(Icons.call, Color(0xFFFEC006), "RECARGA",
                      "13/02/20", "25.00"),
                  _transation(Icons.swap_horiz, Colors.blue, "TRANSFERÊNCIA",
                      "14/02/20", "4.419,21"),
//                  _transation(Icons.arrow_downward, Colors.red,
//                      "SAQUE ATM 51052151", "12/02/20", "91,00"),
//                  _transation(Icons.arrow_downward,Colors.pinkAccent,"SAQUE","12/02/20","411,01"),
//                  _transation(Icons.arrow_downward,Colors.pinkAccent,"SAQUE","12/02/20","411,01"),
//                  _transation(Icons.arrow_downward,Colors.pinkAccent,"SAQUE","12/02/20","411,01"),
//                  _transation()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
