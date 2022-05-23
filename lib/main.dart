import 'dart:ui';

import 'package:alcool_ou_gasolina/widgets/input.widget.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';

import 'widgets/logo.widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Álcool ou Gasolina',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final _gasCtrl = MoneyMaskedTextController();
  final _alcCtrl = MoneyMaskedTextController();
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: ListView(
          children: [
            const Logo(),
            Input(label: 'Gasolina', ctrl: _gasCtrl),
            Input(label: 'Álcool', ctrl: _alcCtrl),
          ],
        ),
      ),
    );
  }
}
