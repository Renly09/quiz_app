import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: MyId(),
    ));

class MyId extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[700],
      appBar: AppBar(
        elevation: 0.0,
        title: const Text(
          'ID Cards',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Center(
              child: CircleAvatar(
                radius: 70.0,
                backgroundImage: AssetImage('asset/guy.jpg'),
              ),
            ),
            const SizedBox(height: 20.0,),
            const Text(
              'Ian Dawkins',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Divider(
              height: 10.0,
              color: Colors.grey[100],
            ),
            const SizedBox(height: 40.0),
            const Text(
              'Department:',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15.0,
              ),
            ),
            const SizedBox(height: 10.0),
            const Text(
              'Marketing',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Row(
              children: const <Widget>[
                Icon(Icons.email),
                Text(
                  "Email:",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10.0),
            const Text(
              'tang@gmail.com',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 40.0),
            const Text(
              'Year Of Graduation::',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15.0,
              ),
            ),
            const SizedBox(height: 10.0),
            const Text(
              '2021/2022',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

