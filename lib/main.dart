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

  TextEditingController weightController = TextEditingController();
  TextEditingController heightController = TextEditingController();

  String _infoText = 'Informe seus dados!';

  void _resetFields() {
    weightController.text = '';
    heightController.text = '';
    _infoText = 'Informe seus dados!';
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadora de IMC'),
        centerTitle: true,
        backgroundColor: Colors.brown,
        actions: [
          IconButton(onPressed: _resetFields, icon: const Icon(Icons.refresh))
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Icon(Icons.person_outline, size: 120, color: Colors.brown),
            TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                  labelText: 'Peso (kg)',
                  labelStyle: TextStyle(color: Colors.brown)),
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.brown, fontSize: 25),
              controller: weightController,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                  labelText: 'Altura (cm)',
                  labelStyle: TextStyle(color: Colors.brown)),
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.brown, fontSize: 25),
              controller: heightController,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: Container(
                height: 50.0,
                // ignore: prefer_const_constructors, deprecated_member_use
                child: RaisedButton(
                  color: Colors.brown,
                  onPressed: () {
                    print('click');
                  },
                  child: const Text(
                    'Calcular',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                    ),
                  ),
                ),
              ),
            ),
            Text(
              _infoText,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.brown,
                fontSize: 25.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
