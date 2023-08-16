import 'package:custom_utils/custom_utils.dart';
import 'package:flutter/material.dart';
import 'package:gati_app/views/screens/screen_login.dart';
import 'package:gati_app/views/widgets/button.dart';
import 'package:get/get.dart';
import '../../helpers/constants.dart';
import '../widgets/main_logo.dart';

class ScreenWelcome extends StatelessWidget {
  ScreenWelcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 4.w),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MainLogo(),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Tanzania Music Rights Society',
                  style: normal_h14Style,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    Expanded(
                      child: Divider(
                        height: 2,
                        color: blackColor,
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Expanded(
                      child: Divider(
                        height: 2,
                        color: blackColor,
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Gati Licensing System',
                  style: normal_h18Style_bold.copyWith(color: btnColor),
                ),
                SizedBox(
                  height: 80,
                ),
                Button(text: 'Get started',onPressed: (){
                  Get.to(ScreenLogin());
                },),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
