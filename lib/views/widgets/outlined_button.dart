import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../helpers/constants.dart';

class OutlinedButton1 extends StatefulWidget {
  Color? buttonColor;
  Color? textColor;
  String text;
  final VoidCallback? onPressed;
  final double? marg;


  @override
  State<OutlinedButton1> createState() => _OutlinedButton1State();

  OutlinedButton1({
    this.buttonColor,
    this.textColor,
    required this.text,
    this.onPressed,
    this.marg,
  });
}

class _OutlinedButton1State extends State<OutlinedButton1> {
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: GestureDetector(
        onTap: widget.onPressed,
        child: Container(
          width:MediaQuery.of(context).size.width < 800 ?MediaQuery.of(context).size.width:MediaQuery.of(context).size.width/2,
          margin: EdgeInsets.symmetric(horizontal: widget.marg ?? 0,vertical: 10),
          padding: EdgeInsets.symmetric(vertical: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(width: 1,color: btnColor),
            color: Colors.transparent,
            // boxShadow: BoxShadow1,
          ),
          child: Center(child: Text(widget.text,style: TextStyle(
            color: widget.textColor == null? btnColor:widget.textColor,
            fontFamily: "Roboto",
            fontWeight: FontWeight.w700,
            fontSize: 15,
          ),)),
        ),
      ),
    );
  }
}
