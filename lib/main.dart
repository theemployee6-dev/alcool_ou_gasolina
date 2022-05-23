import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';

import 'widgets/input.widget.dart';
import 'widgets/loading-button.widget.dart';
import 'widgets/logo.widget.dart';
import 'widgets/success.widget.dart';

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
            const SizedBox(height: 20),
            Success(result: " gasolina", reset: () {}),
            Input(label: 'Gasolina', ctrl: _gasCtrl),
            Input(label: 'Álcool', ctrl: _alcCtrl),
            LoadingButton(
                busy: false, invert: false, text: "CALCULAR", func: () {}),
          ],
        ),
      ),
    );
  }
}
