import 'package:credisis_demo/screens/TelaSecundaria.dart';
import 'package:flutter/material.dart';

class DrawerTile extends StatelessWidget {

  final IconData icon;
  final String text;
//  final PageController controller;

  DrawerTile(this.icon, this.text /*, this.controller*/);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).secondaryHeaderColor,
      child: InkWell(
        onTap: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => TelaSecundaria()));
        },
        child: Container(
          height: 48.0,
          child: Row(
//            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Icon(
                icon,
                size: 32.0,
                color: Theme.of(context).primaryColor,
              ),
              SizedBox(
                width: 32.0,
              ),
              Container(
                width: 200.0,
                child: Text(
                    text,
                    style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black
                    )
                ),
              ),
              Icon(
                  Icons.arrow_forward_ios,
                  size: 32.0,
                  color: Theme.of(context).primaryColor)
            ],
          ),
        ),
      ),
    );
  }
}
