import 'package:custom_utils/custom_utils.dart';
import 'package:flutter/material.dart';

import '../../helpers/constants.dart';

class TagButton extends StatelessWidget {
  String image;
  String text;
  Color color;
  Color bgColor;
  final VoidCallback? onPressed;

  TagButton({
    required this.text,
    required this.color,
    required this.bgColor,
    required this.image,
    this.onPressed,
});

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5.sp),
        padding: EdgeInsets.symmetric(vertical: 8.sp,horizontal: 15.sp),
        decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                  color: fColor,
                  spreadRadius: 4,
                  blurRadius: 6
              ),
            ]
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(image,height: 25.sp,width: 25.sp,),
            SizedBox(width: 10.sp,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(text,style: normal_h1Style_bold.copyWith(color: titleColor),),
                Container(height: 3.sp,
                  width: 15.sp,
                  decoration: BoxDecoration(
                      color: color,
                      borderRadius: BorderRadius.circular(4)
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
