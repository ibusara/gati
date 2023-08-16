import 'package:custom_utils/custom_utils.dart';
import 'package:flutter/material.dart';

import '../../helpers/constants.dart';

class SmallButton extends StatelessWidget {
  String title;
  String image;
  final VoidCallback? onPressed;
  SmallButton({
    required this.title,
    required this.onPressed,
    required this.image,
});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(vertical: 10),
        margin: EdgeInsets.symmetric(vertical: 8.sp,horizontal: 8.sp),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(title,style: TextStyle(
              color: Colors.white,
              fontFamily: "DM Sans",
              fontWeight: FontWeight.w700,
              fontSize: 15.sp,
            ),),
            SizedBox(width: 5.sp,),
            Image.asset(image.toString(),height: 20.sp,width: 20.sp,),
          ],
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(17),
            color: appColor,
            boxShadow: [
              BoxShadow(
                  offset: Offset(-6, 20),
                  color: appColor.withOpacity(.4),blurRadius: 10,spreadRadius: 5
              ),

            ]
        ),
      ),
    );
  }
}
