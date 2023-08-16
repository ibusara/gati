import 'package:flutter/material.dart';
import 'package:gati_app/helpers/constants.dart';
import 'package:gati_app/views/screens/screen_dashboard.dart';
import 'package:gati_app/views/screens/screen_forget_password.dart';
import 'package:gati_app/views/screens/screen_sign_up.dart';
import 'package:gati_app/views/widgets/button.dart';
import 'package:gati_app/views/widgets/custom_input_field2.dart';
import 'package:get/get.dart';
import '../../controllers/ui_controller.dart';
import '../widgets/main_logo.dart';
import '../widgets/outlined_button.dart';

class ScreenLogin extends StatefulWidget {
  ScreenLogin({Key? key}) : super(key: key);

  @override
  State<ScreenLogin> createState() => _ScreenLoginState();
}

class _ScreenLoginState extends State<ScreenLogin> {
  var controller = Get.put(UiController());
  bool remeberMe = false;

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
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),
              MainLogo(),
              SizedBox(
                height: 30,
              ),
              Obx(() {
                return Stack(
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
                ]);
              }),
              SizedBox(
                height: 10,
              ),
              CustomInputField2(
                label: 'E-mail or Phone Number *',
              ),
              CustomInputField2(
                label: 'Password *',
                isPasswordField: true,
              ),

              Align(
                alignment: AlignmentDirectional.centerEnd,
                child: InkWell(
                  onTap: () {
                    Get.to(ScreenForgetPassword());
                  },
                  child: Text('Forgot Password?', style: forgetStyle),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Button(
                text: 'Login',
                onPressed: () {
                  Get.to(ScreenDashboard());
                },
              ),
              SizedBox(
                height: 90,
              ),
              Text('Do’nt have an account?', style: haveAccountStyle),
              OutlinedButton1(
                text: 'Register',
                onPressed: () {
                  Get.to(ScreenSignUp());
                },
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
