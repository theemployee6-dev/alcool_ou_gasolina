// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class LoadingButton extends StatelessWidget {
  var busy = false;
  var invert = false;
  var text = "";
  void Function() func;
  LoadingButton({
    Key? key,
    required this.busy,
    required this.invert,
    required this.text,
    required this.func,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      width: double.infinity,
      margin: const EdgeInsets.all(30.0),
      decoration: BoxDecoration(
        color: invert
            ? Theme.of(context).primaryColor
            : Colors.white.withOpacity(0.8),
        borderRadius: BorderRadius.circular(60.0),
      ),
      child: busy
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : TextButton(
              onPressed: func,
              child: Text(
                text,
                style: TextStyle(
                  color: invert
                      ? Colors.white.withOpacity(0.8)
                      : Theme.of(context).primaryColor,
                  fontSize: 25,
                  fontFamily: "Big Shoulders Display",
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
    );
  }
}
