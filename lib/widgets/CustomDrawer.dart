import 'package:flutter/material.dart';
 class CustomDrawer extends StatelessWidget {
   @override
   Widget build(BuildContext context) {

     Widget _builderDrawerBack() => Container(
       decoration: BoxDecoration(
         color: Colors.green[400]
       ),
     );

     return Drawer(
       child: Stack(
         children: <Widget>[
           _builderDrawerBack()
         ],
       ),
     );
   }
 }
 