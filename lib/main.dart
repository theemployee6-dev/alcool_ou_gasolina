import 'dart:ui';

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
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: 100.0,
                      alignment: Alignment.centerRight,
                      child: const Text(
                        'Gasolina:',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontFamily: "Big Shoulders Display"),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: TextFormField(
                        controller: _gasCtrl,
                        keyboardType: TextInputType.number,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 45.0,
                          fontFamily: "Big Shoulders Display",
                        ),
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: 100.0,
                      alignment: Alignment.centerRight,
                      child: const Text(
                        'Álcool:',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontFamily: "Big Shoulders Display"),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: TextFormField(
                        controller: _alcCtrl,
                        keyboardType: TextInputType.number,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 45.0,
                          fontFamily: "Big Shoulders Display",
                        ),
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
