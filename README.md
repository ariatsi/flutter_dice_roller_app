# 🎲 Application de Lancer de Dés (Flutter)

Cette application Flutter simule un lancer de dés interactif. Lorsque l'utilisateur appuie sur le dé, une nouvelle face est affichée aléatoirement.

## 📌 Objectif

- Développer une application Flutter permettant de lancer un dé.
- Gérer les interactions utilisateur avec `GestureDetector`.
- Charger et afficher dynamiquement des images d’assets.

## 🛠️ Technologies Utilisées

- **Flutter** (Dart)
- **Material Design**
- **Gestion des assets (images des dés)**
- **Utilisation de Random() pour générer des nombres aléatoires**

## 📂 Structure du Projet
```sh
flutter_dice_roller_app/
│── lib/
│   ├── main.dart
│   ├── dice_home_page.dart
│── assets/
│   ├── images/
│       ├── dice1.png
│       ├── dice2.png
│       ├── dice3.png
│       ├── dice4.png
│       ├── dice5.png
│       ├── dice6.png
│── pubspec.yaml
│── README.md
```

## 🚀 Installation et Exécution

### 1️⃣ Prérequis
- **Flutter** installé sur votre machine ([Installation Flutter](https://flutter.dev/docs/get-started/install))
- Un émulateur ou un appareil physique configuré

### 2️⃣ Installation du projet
Clonez le dépôt et installez les dépendances :

```sh
git clone https://github.com/votre-utilisateur/flutter_dice_roller_app.git
cd flutter_dice_roller_app
flutter pub get
```

### 3️⃣ Exécution de l'application
Lancez l’application avec la commande :

```sh
Copy
Edit
flutter run
```

### 📜 Fonctionnalités
- Affichage dynamique du dé 🎲
- Interaction tactile : Un tap sur le dé génère un nouveau nombre aléatoire entre 1 et 6.
- Changement d’image basé sur le nombre tiré.
- Gestion des assets : Images des dés stockées dans assets/images.

### 🏗️ Explication du Code
🔹 main.dart
- Point d'entrée de l'application.
- Déclare DiceApp, qui lance DiceHomePage.
  🔹 dice_home_page.dart
- Gère l’état du dé (StatefulWidget).
- Utilise Random() pour générer une nouvelle face à chaque clic.
- Met à jour l'interface avec setState().

````dart
import 'dart:math';
import 'package:flutter/material.dart';

class DiceHomePage extends StatefulWidget {
  @override
  _DiceHomePageState createState() => _DiceHomePageState();
}

class _DiceHomePageState extends State<DiceHomePage> {
  int diceNumber = 1;

  void rollDice() {
    setState(() {
      diceNumber = Random().nextInt(6) + 1; // Nombre aléatoire entre 1 et 6
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Lancer de Dés')),
      body: Center(
        child: GestureDetector(
          onTap: rollDice,
          child: Image.asset('assets/images/dice$diceNumber.png'),
        ),
      ),
    );
  }
}
````

### 🎨 Personnalisation
Quelques idées pour améliorer l’application :
- Animations : Ajouter un effet de rotation lors du changement de face.
- Compteur : Afficher le nombre total de lancers.
- Thèmes : Permettre un mode sombre.

### 📝 Licence
Ce projet est sous licence MIT. Vous êtes libre de l’utiliser et de le modifier.

### 💡 Remarque
Si l'application ne charge pas les images, assurez-vous que pubspec.yaml est bien configuré :

````yaml
flutter:
  assets:
    - assets/images/
````




## Getting Started

Quelques ressources pour vous aider à démarrer si c'est votre premier projet Flutter :

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

Pour obtenir de l'aide pour démarrer avec le développement Flutter, consultez 
la [documentation en ligne](https://docs.flutter.dev/), qui propose des tutoriels, 
des exemples, des conseils sur le développement mobile et une référence API complète.
