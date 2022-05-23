// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';

// ignore: must_be_immutable
class Input extends StatelessWidget {
  var label = '';
  var ctrl = MoneyMaskedTextController();
  Input({Key? key, required this.label, required this.ctrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 100.0,
          alignment: Alignment.centerRight,
          child: Text(
            label,
            style: const TextStyle(
                color: Colors.white,
                fontSize: 35,
                fontFamily: "Big Shoulders Display"),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: TextFormField(
            controller: ctrl,
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
    );
  }
}
