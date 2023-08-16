// import 'package:custom_utils/custom_utils.dart';
import 'package:flutter/material.dart';
import 'package:gati_app/views/screens/screen_login.dart';
import 'package:get/get.dart';
import '../../controllers/ui_controller.dart';
import '../../helpers/constants.dart';
import '../widgets/button.dart';
import '../widgets/custom_input_field2.dart';
import '../widgets/field_text.dart';
import '../widgets/main_logo.dart';

class ScreenSignUp extends StatelessWidget {
  ScreenSignUp({Key? key}) : super(key: key);
var controller  = Get.put(UiController());
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
          )
        ],
        backgroundColor: Colors.transparent,
      ),
      body:  Obx(() {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 30,),
                MainLogo(),
                SizedBox(height: 20,),
                Text('Please enter the required details',
                  style: requiredDetailsStyle,),
                SizedBox(height: 20,),
                Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 8),
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        decoration: BoxDecoration(
                          border: Border.all(width: 1, color: hintColor),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                              hint: Text(
                                'Choose One *',
                              ),
                              icon: Icon(Icons.keyboard_arrow_down),
                              iconSize: 20,
                              borderRadius: BorderRadius.circular(8),
                              isExpanded: true,
                              onChanged: (newValue) {
                                controller.selectedCat.value =
                                    newValue.toString();
                                controller.update();
                              },
                              value: controller.selectedCat.value,
                              items: controller.categoryList.map((selectedType) {
                                return DropdownMenuItem(
                                  child: new Text(
                                    selectedType,
                                    style: fieldTextStyle,
                                  ),
                                  value: selectedType,
                                );
                              }).toList(),
                            )),
                      ),
                      Positioned(
                          top: 0,
                          left: 10,
                          child: Text(
                            'Choose One *',
                            style: DroplabelStyle,
                          )),
                    ]),
                SizedBox(height: 12,),
                CustomInputField2(
                  label:'Business Name *',
                ),
                CustomInputField2(
                  label:'E-mail *',
                ),
                CustomInputField2(
                  label:'Password *',
                  isPasswordField: true,
                ),
                CustomInputField2(
                  label:'Confirm Password *',
                  isPasswordField: true,
                ),
                CustomInputField2(
                  label:'Phone Number *',
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 10,),
                Button(text: 'Register',onPressed: (){
                  Get.to(ScreenLogin());
                },),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Already have an account? ',  style: haveAccountStyle),
                    InkWell(
                      onTap: (){
                        Get.back();
                      },
                      child: Text('Login',  style: TextStyle(
                          color: btnColor,fontWeight: FontWeight.w500,
                          decoration: TextDecoration.underline
                      )),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
              ],
            ),
          ),
        );
      }),
    );
  }
}
