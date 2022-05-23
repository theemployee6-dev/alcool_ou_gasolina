import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';

import 'input.widget.dart';
import 'loading-button.widget.dart';

class SubmitForm extends StatelessWidget {
  var gasCtrl = MoneyMaskedTextController();
  var alcCtrl = MoneyMaskedTextController();
  var busy = false;
  void Function() submitFunc;
  SubmitForm({
    Key? key,
    required this.alcCtrl,
    required this.gasCtrl,
    required this.busy,
    required this.submitFunc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30.0, right: 30.0),
          child: Input(
            label: 'Gasolina',
            ctrl: gasCtrl,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30.0, right: 30.0),
          child: Input(
            label: 'Álcool',
            ctrl: alcCtrl,
          ),
        ),
        const SizedBox(height: 25.0),
        LoadingButton(
          busy: busy,
          invert: false,
          text: "CALCULAR",
          func: submitFunc,
        ),
      ],
    );
  }
}
