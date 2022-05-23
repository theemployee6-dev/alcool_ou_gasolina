// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import 'loading-button.widget.dart';

class Success extends StatelessWidget {
  var result = "";
  void Function() reset;
  Success({Key? key, required this.result, required this.reset})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(30.0),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.8),
        borderRadius: BorderRadius.circular(25.0),
      ),
      child: Column(
        children: [
          const SizedBox(height: 50.0),
          Text(
            result,
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 40.0,
              fontFamily: "Big Shoulders Display",
            ),
          ),
          const SizedBox(height: 20.0),
          LoadingButton(
            busy: false,
            invert: true,
            text: "Calcular novamente",
            func: reset,
          ),
        ],
      ),
    );
  }
}
