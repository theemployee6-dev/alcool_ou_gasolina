import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';

import '../widgets/logo.widget.dart';
import '../widgets/submit.form.dart';
import '../widgets/success.widget.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _gasCtrl = MoneyMaskedTextController();

  final _alcCtrl = MoneyMaskedTextController();

  var _busy = false;

  var _completed = false;

  var _resultText = "Compensa utilizar Álcool";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: ListView(
          children: [
            const Logo(),
            const SizedBox(height: 20),
            _completed
                ? Success(result: _resultText, reset: () {})
                : SubmitForm(
                    gasCtrl: _gasCtrl,
                    alcCtrl: _alcCtrl,
                    busy: _busy,
                    submitFunc: calculate,
                  ),
          ],
        ),
      ),
    );
  }

  calculate() {
    double alc = double.parse(
          _alcCtrl.text.replaceAll(RegExp(r'[,.]'), ''),
        ) /
        100;
    double gas = double.parse(
          _gasCtrl.text.replaceAll(RegExp(r'[,.]'), ''),
        ) /
        100;
    double res = alc / gas;
    setState(() {
      _completed = false;
      _busy = true;
    });
  }
}
