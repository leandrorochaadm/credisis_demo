import 'dart:ffi';

import 'package:credisis_demo/tiles/drawer_tile.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget _builderDrawerBack() => Container(
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
          ),
        );

    return Drawer(
      child: Stack(
        children: <Widget>[
          _builderDrawerBack(),
          ListView(
            padding: EdgeInsets.only(left: 0.0, top: 10.0),
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 12.0),
                height: 170.0,
                child: Stack(
                  children: <Widget>[
                    Center(
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            Icon(
                              Icons.person,
                              size: 120.0,
                              color: Theme.of(context).secondaryHeaderColor,
                            ),
                            /*Container(
                                    width: 200.0,
                                    height: 120.0,
//                                    padding: EdgeInsets.all(120.0),
//                                  margin: EdgeInsets.all(1.0),
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image:  NetworkImage(
                                          "https://flutter.dev/assets/flutter-lockup-c13da9c9303e26b8d5fc208d2a1fa20c1ef47eb021ecadf27046dea04c0cebf6.png"

                                      ),
                                      ),
//                                      color: Colors.blue,
//                                      shape: BoxShape.circle,

                                    ),
                                    alignment: Alignment.center,
                                  ),*/
                            Text(
                              "Leandro Rocha",
                              style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  color:
                                      Theme.of(context).secondaryHeaderColor),
                            ),
                            Text(
                              "0001 / 9999999-9",
                              style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  color:
                                      Theme.of(context).secondaryHeaderColor),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Divider(),
              DrawerTile(Icons.star, "Acesso rápido"),
              DrawerTile(Icons.search, "Consulta"),
              DrawerTile(Icons.attach_money, "Pagamentos"),
              DrawerTile(Icons.repeat, "Transferências"),
              DrawerTile(Icons.trending_up, "Aplicações"),
              DrawerTile(Icons.bookmark, "Débito direto autorizado"),
              DrawerTile(Icons.build, "Serviços"),
              DrawerTile(Icons.book, "Gestão de Assinatura"),
              DrawerTile(Icons.person, "Minha conta"),
              DrawerTile(Icons.help, "Ajuda"),
            ],
          )
        ],
      ),
    );
  }
}
