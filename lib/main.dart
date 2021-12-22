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
        backgroundColor: Colors.red,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.refresh))
        ],
      ),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: const [
          Icon(Icons.person_outline, size: 120, color: Colors.red),
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                labelText: 'Peso (kg)',
                labelStyle: TextStyle(color: Colors.red)),
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.red, fontSize: 25),
          ),
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                labelText: 'Altura (cm)',
                labelStyle: TextStyle(color: Colors.red)),
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.red, fontSize: 25),
          )
        ],
      ),
    );
  }
}
