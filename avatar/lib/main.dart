import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.lightGreen,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("GGM motors"),
      ),
      body: Container(
        child: Column(children: [
          Container( height: 100, width: 100, color: Colors.red,),
          Container( height: 100, width: 100, color: Colors.orange,),
          Container( height: 100, width: 100, color: Colors.blueGrey,),
        ],
        )
      )
       )
    ),
  );
}
