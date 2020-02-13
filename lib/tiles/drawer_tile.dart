import 'package:flutter/material.dart';

class DrawerTile extends StatelessWidget {

  final IconData icon;
  final String text;

  DrawerTile(this.icon, this.text);



  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).secondaryHeaderColor,
      child: InkWell(
        onTap: (){},
        child: Container(
          height: 60.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Icon(
                icon,
                size: 32.0,
                color: Theme.of(context).primaryColor,
              ),
              SizedBox(
                width: 32.0,
              ),
              Text(text,
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black
              )),
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
