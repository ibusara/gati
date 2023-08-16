import 'package:custom_utils/custom_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const Color sfBgColor = Color(0xffffffff);
const Color hintColor = Color(0xFFA0A2A8);
const Color titleColor = Color(0xff000000);
const Color btnColor = Color(0xff3C55A5);
const Color appColor = Color(0xff44BDED);
const Color whiteColor = Color(0xffffffff);
const Color blackColor = Color(0xff000000);
const Color fColor = Color(0xffF9F9F9);
const Color labelBackColr= Color(0xffFEF7FC);
const Color labelColr= Color(0xff4A454E);
const Color borderColor= Color(0xff7C757E);
LinearGradient gradientStyle = LinearGradient(
    colors: [btnColor, appColor,],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter
);




TextStyle normal_h14Style = TextStyle(fontSize: 14,fontWeight: FontWeight.w400, color: blackColor, fontFamily: 'Roboto');
TextStyle btn_textStyle = TextStyle(
  color: whiteColor,
  fontFamily: "Roboto",
  fontWeight: FontWeight.w700,
  fontSize: 15,
);
TextStyle main_hStyle_bold = TextStyle(fontSize: 14,fontWeight: FontWeight.w600, color: blackColor, fontFamily: 'Roboto');
TextStyle scanStyle = TextStyle(fontSize: 14,fontWeight: FontWeight.w700, color: Color(0xff0094FF), fontFamily: 'Roboto');
TextStyle normal_h18Style_bold = TextStyle(fontSize: 18, color: blackColor,fontWeight: FontWeight.w600,fontFamily: 'Roboto');
TextStyle langTextStyle = TextStyle(fontSize: 12, color: blackColor,fontWeight: FontWeight.w400,fontFamily: 'Roboto');
TextStyle ExtraBigTextStyle = TextStyle(fontSize: 20, color: btnColor,fontWeight: FontWeight.w700,fontFamily: 'Roboto');
TextStyle expansionTitleStyle = TextStyle(fontSize: 20, color: whiteColor,fontWeight: FontWeight.w600,fontFamily: 'Roboto');
TextStyle subTitleStyle = TextStyle(fontSize: 12, color: whiteColor,fontWeight: FontWeight.w600,fontFamily: 'Roboto');
TextStyle expendedContentStyle = TextStyle(fontSize: 14, color: whiteColor,fontWeight: FontWeight.w600,fontFamily: 'Roboto');
TextStyle stepTextStyle = TextStyle(fontSize: 9, color: blackColor,fontWeight: FontWeight.w400,fontFamily: 'Roboto');
TextStyle bigFieldStyle = TextStyle(fontSize: 17, color: Color(0xff454545), fontWeight: FontWeight.w700,fontFamily: 'Roboto');
TextStyle forgetStyle = TextStyle(fontSize: 12, color: appColor,fontWeight: FontWeight.w400,fontFamily: 'Roboto');
TextStyle haveAccountStyle = TextStyle(fontSize: 14, color: blackColor,fontWeight: FontWeight.w500,fontFamily: 'Roboto');
TextStyle requiredDetailsStyle = TextStyle(fontSize: 14, color: btnColor,fontWeight: FontWeight.w500,fontFamily: 'Roboto');
TextStyle labelStyle = TextStyle(fontSize: 16, backgroundColor: labelBackColr, color: Color(0xffFF4A454E),fontWeight: FontWeight.w400,fontFamily: 'Roboto');
TextStyle DroplabelStyle = TextStyle(fontSize: 14, backgroundColor: labelBackColr, color: Color(0xffFF4A454E),fontWeight: FontWeight.w400,fontFamily: 'Roboto');
TextStyle fieldTextStyle = TextStyle(fontSize: 16, color: blackColor,fontWeight: FontWeight.w400,fontFamily: 'Roboto');
TextStyle addInfoStyle = TextStyle(fontSize: 16, color: btnColor,fontWeight: FontWeight.w700,fontFamily: 'Roboto');
TextStyle hintStyle = TextStyle(fontSize: 13, color:Color(0xff50b2f8),fontWeight: FontWeight.w600,fontFamily: 'Roboto');



AppBar customAppBar = AppBar(
  automaticallyImplyLeading: false,
  actions: [
    Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipOval(
            child: Image.asset(
              'assets/images/swahili.png',
              height: 25,
              width: 25,
              fit: BoxFit.fill,
            )),
        SizedBox(width: 5,),
        Text('Kiswahili',style: langTextStyle.copyWith(color: Color(0xffBFBEBE)),),
        SizedBox(width: 5,),
        ClipOval(
            child: Image.asset(
              'assets/images/eng.png',
              height: 25,
              width: 25,
              fit: BoxFit.fill,
            )),
        SizedBox(width: 5,),
        Text('English',style: langTextStyle.copyWith(color: blackColor),),
        SizedBox(width: 10,),
      ],
    )
  ],
  backgroundColor: Colors.transparent,
);



List<BoxShadow> appBoxShadow1 = [
  BoxShadow(
    blurRadius: 8.sp,
    spreadRadius: 5,
    color: fColor,
  )
];
