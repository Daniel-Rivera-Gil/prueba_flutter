
import 'dart:developer';

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {  //Es el hijo del homePage
  int _counter = 0;

  void _incrementCounter() {
    setState(() { //Esto sirve para refrescar la vista
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(8),
              child: Text('Prueba padding'),
            ),
          
          Container(
            color: Colors.blueAccent,
            margin: const EdgeInsets.only(left: 24),
            padding: const EdgeInsets.all(8),
            child: const Text("Prueba Container"),
          ),

          GestureDetector(
            onTap: () {
              log('message');
            },
            child: const Card(
              margin: EdgeInsets.only(left: 24),
              child: Text(
                "Prueba Card",
                style: TextStyle(fontSize: 24)),
            ),
          ),


            const SizedBox(
              width: 80,
              child: FittedBox(
                fit: BoxFit.cover,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Prueba1"),
                    Icon(Icons.add_a_photo),
                    Expanded(child: Text("Prueba1")),
                ],
                ),
              ),
            ),
          
            const Text(
              'You have pushed the button this many times:',
              style: TextStyle(color: Colors.blueAccent,fontSize: 24),
              overflow: TextOverflow.clip,
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: IconButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        icon: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
