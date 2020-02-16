import 'package:flutter/material.dart';

class TelaSecundaria extends StatefulWidget {
  @override
  _TelaSecundariaState createState() => _TelaSecundariaState();
}

class _TelaSecundariaState extends State<TelaSecundaria> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset("lib/images/logo2.png"),
//        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Container(
        width: double.infinity,
//        padding: EdgeInsets.all(32),
        decoration: BoxDecoration(color: Theme.of(context).primaryColor),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            /*Image.asset(
              "lib/images/logo2.png",
//              width: 150.0,
            ),*/
            Icon(
              Icons.report_problem,
              size: 150.0,
              color: Theme.of(context).secondaryHeaderColor,
            ),
            Text(
              "Em desevolvimento",
              style: TextStyle(
                  fontSize: 30.0,
                  color: Theme.of(context).secondaryHeaderColor),
            )
          ],
        ),
      ),
    );
  }
}
