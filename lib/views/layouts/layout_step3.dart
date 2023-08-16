import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/ui_controller.dart';
import '../../helpers/constants.dart';

class LayoutStep3 extends StatelessWidget {
  LayoutStep3({Key? key}) : super(key: key);
  var controller = Get.put(UiController());
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Obx(() {
          return Stack(
            children:[
              Container(
                margin: EdgeInsets.only(top: 8),
              padding: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: hintColor),
                borderRadius: BorderRadius.circular(4),
              ),
              child: DropdownButtonHideUnderline(
                  child:
                  DropdownButton(
                    hint: Text(
                      'Business Type *',
                    ),
                    icon: Icon(Icons.keyboard_arrow_down),
                    iconSize: 20,
                    borderRadius: BorderRadius.circular(8),
                    isExpanded: true,
                    onChanged: (newValue) {
                      controller.businessType.value =
                          newValue.toString();
                      controller.update();
                    },
                    value: controller.businessType.value,
                    items:
                    controller.businessTypeList.map((selectedType) {
                      return DropdownMenuItem(
                        child: new Text(
                          selectedType,
                          style: fieldTextStyle,
                        ),
                        value: selectedType,
                      );
                    }).toList(),
                  )
              ),
            ),
              Positioned(
                  top:0,
                  left:10,
                  child: Text('Business Type *',style: DroplabelStyle,)),
            
            ]
          );
        }),
        SizedBox(height: 15,),
        Obx(() {
          return Stack(
            children:[
              Container(
                margin: EdgeInsets.only(top: 8),
              padding: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: hintColor),
                borderRadius: BorderRadius.circular(4),
              ),
              child: DropdownButtonHideUnderline(
                  child:
                  DropdownButton(
                    hint: Text(
                      'Music Device *',
                    ),
                    icon: Icon(Icons.keyboard_arrow_down),
                    iconSize: 20,
                    borderRadius: BorderRadius.circular(8),
                    isExpanded: true,
                    onChanged: (newValue) {
                      controller.musicDevice.value =
                          newValue.toString();
                      controller.update();
                    },
                    value: controller.musicDevice.value,
                    items:
                    controller.musicDeviceList.map((selectedType) {
                      return DropdownMenuItem(
                        child: new Text(
                          selectedType,
                          style: fieldTextStyle,
                        ),
                        value: selectedType,
                      );
                    }).toList(),
                  )
              ),
            ),
              Positioned(
                  top:0,
                  left:10,
                  child: Text('Music Device *',style: DroplabelStyle,)),

            ]
          );
        }),
      ],
    );
  }
}
