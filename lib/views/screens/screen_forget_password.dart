import 'package:flutter/material.dart';
import 'package:gati_app/helpers/constants.dart';
import 'package:gati_app/views/widgets/button.dart';
import 'package:gati_app/views/widgets/custom_input_field2.dart';
import 'package:get/get.dart';
import '../widgets/field_text.dart';
import '../widgets/main_logo.dart';
import '../widgets/outlined_button.dart';
class ScreenForgetPassword extends StatelessWidget {
  ScreenForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
          ),
        ],
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 50,),
              MainLogo(),
              SizedBox(height: 30,),
              CustomInputField2(
                label:'E-mail or Phone Number *',
              ),
              CustomInputField2(
                label:'Password *',
                isPasswordField: true,
              ),
              CustomInputField2(
                label:'Confirm Password *',
                isPasswordField: true,
              ),
              SizedBox(height: 30,),
              Button(text: 'Send Password',onPressed: (){
                Get.back();
              },),
              OutlinedButton1(text: 'Login',onPressed: (){
                Get.back();
              },),
            ],
          ),
        ),
      ),
    );
  }
}
