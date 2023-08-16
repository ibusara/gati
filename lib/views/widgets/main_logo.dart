import 'package:flutter/material.dart';

class MainLogo extends StatelessWidget {
  MainLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/logo.png',
      height: 65,
      width: 65,
    );
  }
}
