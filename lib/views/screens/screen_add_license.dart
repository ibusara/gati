import 'package:flutter/material.dart';
import 'package:gati_app/views/screens/screen_dashboard.dart';
import 'package:get/get.dart';

import '../../controllers/ui_controller.dart';
import '../../helpers/constants.dart';
import '../layouts/layout_step1.dart';
import '../layouts/layout_step2.dart';
import '../layouts/layout_step3.dart';
import '../layouts/layout_step4.dart';
import '../layouts/layout_step5.dart';
import '../widgets/main_logo.dart';
import '../widgets/next_button.dart';

class ScreenAddLicense extends StatefulWidget {
  ScreenAddLicense({Key? key}) : super(key: key);

  @override
  State<ScreenAddLicense> createState() => _ScreenAddLicenseState();
}

class _ScreenAddLicenseState extends State<ScreenAddLicense> {
  var controller = Get.put(UiController());
  List steps = [
    LayoutStep1(),
    LayoutStep2(),
    LayoutStep3(),
    LayoutStep4(),
    LayoutStep5(),
  ];
  RxInt currentStep = 0.obs;
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
      body: Obx(() {
        return Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  MainLogo(),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'License for Public Performance & Advertising',
                    style: main_hStyle_bold,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: (){
                          currentStep.value = 0 ;
                        },
                        child: Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: currentStep.value >= 0
                                ? btnColor
                                : labelColr.withOpacity(.3),
                          ),
                          child: Center(
                              child: Text(
                            '1',
                            style: TextStyle(
                                color: currentStep.value >= 0
                                    ? whiteColor
                                    : labelColr),
                          )),
                        ),
                      ),
                      Expanded(
                          child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 2),
                        child: Divider(
                          thickness: 2,
                          color: currentStep.value >= 0 ? btnColor : labelColr,
                        ),
                      )),
                      InkWell(
                        onTap: (){
                          currentStep.value = 1 ;
                        },
                        child: Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: currentStep.value >= 1
                                ? btnColor
                                : labelColr.withOpacity(.3),
                          ),
                          child: Center(
                              child: Text(
                            '2',
                            style: TextStyle(
                                color: currentStep.value >= 1
                                    ? whiteColor
                                    : labelColr),
                          )),
                        ),
                      ),
                      Expanded(
                          child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 2),
                        child: Divider(
                          thickness: 2,
                          color: currentStep.value >= 1 ? btnColor : labelColr,
                        ),
                      )),
                      InkWell(
                        onTap: (){
                          currentStep.value = 2 ;
                        },
                        child: Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: currentStep.value >= 2
                                ? btnColor
                                : labelColr.withOpacity(.3),
                          ),
                          child: Center(
                              child: Text(
                            '3',
                            style: TextStyle(
                                color: currentStep.value >= 2
                                    ? whiteColor
                                    : labelColr),
                          )),
                        ),
                      ),
                      Expanded(
                          child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 2),
                        child: Divider(
                          thickness: 2,
                          color: currentStep.value >= 2 ? btnColor : labelColr,
                        ),
                      )),
                      InkWell(
                        onTap: (){
                          currentStep.value = 3 ;
                        },
                        child: Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: currentStep.value >= 3
                                ? btnColor
                                : labelColr.withOpacity(.3),
                          ),
                          child: Center(
                              child: Text(
                            '4',
                            style: TextStyle(
                                color: currentStep.value >= 3
                                    ? whiteColor
                                    : labelColr),
                          )),
                        ),
                      ),
                      Expanded(
                          child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 2),
                        child: Divider(
                          thickness: 2,
                          color: currentStep.value >= 3 ? btnColor : labelColr,
                        ),
                      )),
                      InkWell(
                        onTap: (){
                          currentStep.value = 4;
                        },
                        child: Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: currentStep.value >= 4
                                ? btnColor
                                : labelColr.withOpacity(.3),
                          ),
                          child: Center(
                              child: Text(
                            '5',
                            style: TextStyle(
                                color: currentStep.value >= 4
                                    ? whiteColor
                                    : labelColr),
                          )),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('License Type',style: stepTextStyle,),
                      Text('Applicants',style: stepTextStyle,),
                      Text('Operations',style: stepTextStyle,),
                      Text('Contact info',style: stepTextStyle,),
                      Text('Payment',style: stepTextStyle,),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  steps[currentStep.value],
                  SizedBox(
                    height: 50,
                  ),
                  NextButton(
                      text: currentStep.value == 4
                          ? 'Apply for Licensce'
                          : 'Next',
                      onPressed: () {
                        if (currentStep.value < 4) {
                          currentStep.value++;
                        }
                        else {
                          Get.off(ScreenDashboard());
                        }
                      }),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
