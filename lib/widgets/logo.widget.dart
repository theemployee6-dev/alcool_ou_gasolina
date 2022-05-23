import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    return Column(
      children: [
        SizedBox(height: h * 0.08),
        Image.asset(
          "assets/images/aog-white.png",
          height: h * 0.15,
        ),
        SizedBox(height: h * 0.08),
        Text(
          'Álcool ou Gasolina',
          style: TextStyle(
              fontSize: h * 0.07,
              color: Colors.white,
              fontFamily: "Big Shoulders Display"),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
