import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const DiceApp());
}

// Classe principale qui encapsule l'application
class DiceApp extends StatelessWidget {
  const DiceApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Application de Lancer de Dés',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const DiceHomePage(),
    );
  }
}

// Page d'accueil de l'application (StatefulWidget)
class DiceHomePage extends StatefulWidget {
  const DiceHomePage({Key? key}) : super(key: key);

  @override
  _DiceHomePageState createState() => _DiceHomePageState();
}

class _DiceHomePageState extends State<DiceHomePage> {
  int diceNumber = 1;

  void rollDice() {
    setState(() {
      // Génère un nombre aléatoire entre 1 et 6
      diceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Application de Lancer de Dés'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: GestureDetector(
            onTap: rollDice,
            child: Image.asset('assets/images/dice$diceNumber.png'),
          ),
        ),
      ),
    );
  }
}