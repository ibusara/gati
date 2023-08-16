import 'package:flutter/material.dart';
import 'package:gati_app/views/screens/screen_add_license.dart';
import 'package:get/get.dart';

import '../../helpers/constants.dart';
import '../layouts/item_license.dart';

class ScreenDashboard extends StatelessWidget {
  ScreenDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: btnColor,
        onPressed: () {
        Get.to(ScreenAddLicense());
      },
      child: Icon(Icons.add),
      ),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: EdgeInsets.only(top: 15, left: 8.0, bottom: 15,),
          child: Image.asset('assets/images/drawerIcon.png',),
        ),
        leadingWidth: 40,
        title: Image.asset('assets/images/gatilogo.png', width: 60,
          height: 40,
          fit: BoxFit.contain,),
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
              Text('Kiswahili',
                style: langTextStyle.copyWith(color: Color(0xffBFBEBE)),),
              SizedBox(width: 5,),
              ClipOval(
                  child: Image.asset(
                    'assets/images/eng.png',
                    height: 25,
                    width: 25,
                    fit: BoxFit.fill,
                  )),
              SizedBox(width: 5,),
              Text(
                'English', style: langTextStyle.copyWith(color: blackColor),),
              SizedBox(width: 10,),
            ],
          ),
        ],
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Align(
          alignment: Alignment.topCenter,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  'License for Public Performance & Advertising',
                  style: main_hStyle_bold,
                ),
                SizedBox(
                  height: 20,
                ),
                Text('All Licenses',
                  style: addInfoStyle.copyWith(fontWeight: FontWeight.w600),),
                SizedBox(
                  height: 20,
                ),
                ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                  return ItemLicense();
                }, separatorBuilder: (BuildContext context, int index) { 
                  return SizedBox(height: 20);
                }, itemCount: 5,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
