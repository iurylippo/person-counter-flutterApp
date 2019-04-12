import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: "Person Counter",
      home: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Pessoas: 0",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
         
        ],
      )));
}
