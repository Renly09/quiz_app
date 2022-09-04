import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      home: List(),
    ));

class List extends StatefulWidget {
  const List({Key? key}) : super(key: key);

  @override
  _ListState createState() => _ListState();
}

class _ListState extends State<List> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('LIst View'),
      ),
      body: ListView.builder(
        itemBuilder: (_, index) {
          return Container(
            //color: randomColor(),
            color: Colors.grey,
            width: 500,
            height: 500,
          );
        },
      ),
    );
  }
}
