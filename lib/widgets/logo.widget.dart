import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 60),
        Image.asset(
          "assets/images/aog-white.png",
          height: 80.0,
        ),
        const SizedBox(height: 10),
        const Text(
          'Álcool ou Gasolina',
          style: TextStyle(
              fontSize: 25,
              color: Colors.white,
              fontFamily: "Big Shoulders Display"),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
