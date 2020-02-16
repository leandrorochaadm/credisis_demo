import 'package:credisis_demo/screens/TelaPrincipal.dart';
import 'package:credisis_demo/screens/Login.dart';
import 'package:flutter/material.dart';

void main() => runApp(
    MaterialApp(
//      home: TelaPrincipal(),
        home: Login(),
    debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF1A8940),
        secondaryHeaderColor: Colors.white,
      ),
    )
);


