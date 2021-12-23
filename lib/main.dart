// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadora de IMC'),
        centerTitle: true,
        backgroundColor: Colors.brown,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.refresh))
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Icon(Icons.person_outline, size: 120, color: Colors.brown),
            const TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: 'Peso (kg)',
                  labelStyle: TextStyle(color: Colors.brown)),
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.brown, fontSize: 25),
            ),
            const TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: 'Altura (cm)',
                  labelStyle: TextStyle(color: Colors.brown)),
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.brown, fontSize: 25),
            ),
            Container(
              height: 50.0,
              // ignore: prefer_const_constructors, deprecated_member_use
              child: RaisedButton(
                onPressed: null,
                child: const Text(
                  'Calcular',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                  ),
                ),
                color: Colors.brown,
              ),
            ),
            const Text(
              'Info',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.brown,
                fontSize: 25.0,
              ),
            )
          ],
        ),
      ),
    );
  }
}
