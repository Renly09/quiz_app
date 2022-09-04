import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
  debugShowCheckedModeBanner: false,
  home: MyApp(),
));
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Flutter And Dart Extraction'),
        backgroundColor: Colors.green,
        elevation: 2,
      ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: (){

        },
          backgroundColor: Colors.blueAccent,
        ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
          icon: Icon(Icons.business),
           label: 'Business'
          ),
          BottomNavigationBarItem(
          icon: Icon(Icons.school),
          label: 'School',
          )
        ],
      ),
      drawer: const Drawer(
        child: Text('Yor'),
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start ,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            child: const Text('its all over there, go on'),
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(10),
            color: Colors.grey,
            width: 70,
            height: 200,
          ),
          Container(
            margin: const EdgeInsets.all(20) ,
            padding: const EdgeInsets.all(10) ,
            color: Colors.grey[600],
            width: 70,
            height: 200,
         ),
          ElevatedButton(
              onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => const Page2()
                    ),
                );
              },
              child: const Text(
                  'Go to page2`',
                style: TextStyle(),
              ),
          ),
        ],
      ),
    );
  }
}
class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        title: const Text('Choose Location'),
        centerTitle: true,
      ),
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            height: 50.0,
            width: 50.0,
            color: Colors.green,
          ),
          const SizedBox(
            height: 50,
            width: 50,
          ),
          const SizedBox(
            height: 50,
            width: 50,
          ),
        ],
      ),
    );
  }
}

