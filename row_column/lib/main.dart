import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hey There!'),
        centerTitle: true,
        backgroundColor: Colors.grey[600],
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Hey Gamers'),
          FlatButton(
            onPressed: () {},
            color: Colors.amber,
            child: Text('Right here '),
          ),
          Container(
            color: Colors.cyan,
            padding:EdgeInsets.all(30.0),
            child: Text('Inside Container'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('click'),
      ),
    );
  }
}
