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
                 margin: EdgeInsets.fromLTRB(0.0, 12.0, 20.0, 8.0),
                 height: 170.0,
                 child: Stack(
                   children: <Widget>[
                     Positioned(
                         top: 8.0,
                         left: 0.0,
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.center,
                           children: <Widget>[
                             Container(
                               alignment: Alignment.bottomCenter,
                               child: Column(
                                 children: <Widget>[
                                   Icon(Icons.person_pin, size: 120.0, color: Theme.of(context).secondaryHeaderColor,),
                                   Text("Leandro \n 0001 / 9999999-9",
                                     style: TextStyle(
                                         fontSize: 18.0,
                                         fontWeight: FontWeight.bold,
                                         color: Theme.of(context).secondaryHeaderColor),
                                   ),
                                 ],
                               ),
                             ),

                           ],
                         ))
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
               DrawerTile(Icons.build, "serviços"),
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
 