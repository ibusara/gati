import 'package:flutter/material.dart';

import '../../helpers/constants.dart';

class NextButton extends StatelessWidget {
  NextButton({
    required this.text,this.onPressed
});
String text;
final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10,horizontal: 30),
        decoration: BoxDecoration(
          color: btnColor,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Text(text,style: btn_textStyle,),
      ),
    );
  }
}
