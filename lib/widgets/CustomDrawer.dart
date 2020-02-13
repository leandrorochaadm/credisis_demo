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
             padding: EdgeInsets.only(left: 32.0, top: 10.0),
             children: <Widget>[
               Container(
                 margin: EdgeInsets.fromLTRB(0.0, 16.0, 16.0, 8.0),
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
               DrawerTile(Icons.all_inclusive, "primeiro"),
               DrawerTile(Icons.all_inclusive, "primeiro"),
               DrawerTile(Icons.all_inclusive, "primeiro"),
               DrawerTile(Icons.all_inclusive, "primeiro"),
               DrawerTile(Icons.all_inclusive, "primeiro"),
               DrawerTile(Icons.all_inclusive, "primeiro"),
             ],
           )
         ],
       ),
     );
   }
 }
 