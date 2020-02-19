import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart' show canLaunch, launch;

class TelaSecundaria extends StatefulWidget {
  @override
  _TelaSecundariaState createState() => _TelaSecundariaState();
}

class _TelaSecundariaState extends State<TelaSecundaria> {
  _launchURL() async {
    const url =
        'https://api.whatsapp.com/send?phone=5569984015882&text=Ol%C3%A1';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

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
            Image.asset(
              "lib/images/profile.jpg",
              width: 200.0,
              height: 200.0,
            ),
            RaisedButton(
                child: Text(
                  "Fale com o desevolvedor",
                  style: TextStyle(color: Colors.black, fontSize: 16.0),
                ),
                padding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                color: Theme.of(context).secondaryHeaderColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0)),
                onPressed: _launchURL),
            /*Icon(
              Icons.report_problem,
              size: 150.0,
              color: Theme.of(context).secondaryHeaderColor,
            ),*/
            /*/ Text(
              "Essa tela está em desevolvimento",
              style: TextStyle(
                  fontSize: 20.0,
                  color: Theme.of(context).secondaryHeaderColor),
            ),
            Text(
              "Obrigado por clicar",
              style: TextStyle(
                  fontSize: 20.0,
                  color: Theme.of(context).secondaryHeaderColor),
            ),
            Text(
              "Em breve estará disponível",
              style: TextStyle(
                  fontSize: 20.0,
                  color: Theme.of(context).secondaryHeaderColor),
            )*/
          ],
        ),
      ),
    );
  }
}
