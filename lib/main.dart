import 'package:flutter/material.dart';

void main() => runApp(ExtensionsApp());

class ExtensionsApp extends StatelessWidget {
  const ExtensionsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Center(child: Text('Home Screen')),
    );
  }
}
