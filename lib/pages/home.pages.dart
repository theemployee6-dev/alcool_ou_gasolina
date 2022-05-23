import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';

import '../widgets/logo.widget.dart';
import '../widgets/submit.form.dart';
import '../widgets/success.widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color _color = Colors.deepPurple;
  var _gasCtrl = MoneyMaskedTextController();

  var _alcCtrl = MoneyMaskedTextController();

  var _busy = false;

  var _completed = false;

  var _resultText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        duration: const Duration(milliseconds: 1200),
        color: _color,
        child: SafeArea(
          child: ListView(
            children: [
              const Logo(),
              const SizedBox(height: 20),
              _completed
                  ? Success(result: _resultText, reset: reset)
                  : SubmitForm(
                      gasCtrl: _gasCtrl,
                      alcCtrl: _alcCtrl,
                      busy: _busy,
                      submitFunc: calculate,
                    ),
            ],
          ),
        ),
      ),
    );
  }

  Future calculate() {
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
      _color = Colors.purple;
      _completed = false;
      _busy = true;
    });

    return Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        if (res >= 0.7) {
          _resultText = "Compensa utilizar Gasolina";
        } else {
          _resultText = "Compensa utilizar Álcool";
        }
        _completed = true;
        _busy = false;
      });
    });
  }

  reset() {
    setState(() {
      _color = Theme.of(context).primaryColor;
      _gasCtrl = MoneyMaskedTextController();
      _alcCtrl = MoneyMaskedTextController();
      _completed = false;
      _busy = false;
    });
  }
}
