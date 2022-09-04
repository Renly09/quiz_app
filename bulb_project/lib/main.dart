import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
  debugShowCheckedModeBanner: false,
  home: MyApp(),
));
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var isBulbOn = false;
  _buildBulbImage(){
    if (isBulbOn) {
      return Image.asset('images/bulb_on.webp');
    } else {
      return Image.asset('images/bulb_off.jpg');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _buildBulbImage(),
          TextButton(
              onPressed: (){
                setState(() {
                  isBulbOn = !isBulbOn;
                });
              },
              child: const Text('Change')
          ),
        ],
      ),
    );
  }
}
