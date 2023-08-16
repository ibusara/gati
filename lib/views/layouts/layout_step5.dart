import 'package:flutter/material.dart';
import 'package:gati_app/views/widgets/custom_input_field2.dart';
import 'package:get/get.dart';

import '../../controllers/ui_controller.dart';
import '../../helpers/constants.dart';

class LayoutStep5 extends StatelessWidget {
  LayoutStep5({Key? key}) : super(key: key);

  var controller = Get.put(UiController());
  RxString PaymentType = 'By Card'.obs;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Obx(() {
          return Stack(children: [
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
                  'Business Type *',
                ),
                icon: Icon(Icons.keyboard_arrow_down),
                iconSize: 20,
                borderRadius: BorderRadius.circular(8),
                isExpanded: true,
                onChanged: (newValue) {
                  controller.businessType.value = newValue.toString();
                  controller.update();
                },
                value: controller.businessType.value,
                items: controller.businessTypeList.map((selectedType) {
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
                  'Business Type *',
                  style: DroplabelStyle,
                )),
          ]);
        }),
        SizedBox(
          height: 15,
        ),
        Obx(() {
          return Stack(children: [
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
                  'Music Device *',
                ),
                icon: Icon(Icons.keyboard_arrow_down),
                iconSize: 20,
                borderRadius: BorderRadius.circular(8),
                isExpanded: true,
                onChanged: (newValue) {
                  controller.musicDevice.value = newValue.toString();
                  controller.update();
                },
                value: controller.musicDevice.value,
                items: controller.musicDeviceList.map((selectedType) {
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
                  'Music Device *',
                  style: DroplabelStyle,
                )),
          ]);
        }),
        SizedBox(
          height: 20,
        ),
        Text(
          'Add Payment',
          style: ExtraBigTextStyle,
        ),
        SizedBox(
          height: 10,
        ),
        Obx(() {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Radio(
                          value: 'By Card',
                          focusColor: btnColor,
                          fillColor: MaterialStateProperty.all(btnColor),
                          groupValue: PaymentType.value,
                          activeColor: btnColor,
                          onChanged: (v) {
                            PaymentType.value = v!;
                          }),
                      Text(
                        'By Card',
                        style: fieldTextStyle.copyWith(
                            color: labelColr, fontSize: 12),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Radio(
                          value: 'Banks',
                          groupValue: PaymentType.value,
                          activeColor: btnColor,
                          fillColor: MaterialStateProperty.all(btnColor),
                          onChanged: (v) {
                            PaymentType.value = v!;
                          }),
                      Text(
                        'Banks',
                        style: fieldTextStyle.copyWith(
                            color: labelColr, fontSize: 12),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Radio(
                          value: 'others',
                          groupValue: PaymentType.value,
                          activeColor: btnColor,
                          fillColor: MaterialStateProperty.all(btnColor),
                          onChanged: (v) {
                            PaymentType.value = v!;
                          }),
                      Text(
                        'Others',
                        style: fieldTextStyle.copyWith(
                            color: labelColr, fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
              PaymentType.value == 'By Card'
                  ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/scanner.png',
                              height: 18,
                              width: 18,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Scan Card',
                              style: scanStyle,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Name on card',
                          style: bigFieldStyle,
                        ),
                        CustomInputField2(
                          hint: 'NAME',
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Card Number',
                          style: bigFieldStyle,
                        ),
                        CustomInputField2(
                          hint: 'XXXX   XXXX   XXXX   XXXX',
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Expiry Date',
                                    style: bigFieldStyle,
                                  ),
                                  CustomInputField2(
                                    hint: 'MM/YY',
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Security Code',
                                    style: bigFieldStyle,
                                  ),
                                  CustomInputField2(
                                    hint: 'CVV',
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'ZIP/Postal Code',
                          style: bigFieldStyle,
                        ),
                        CustomInputField2(
                          hint: 'xXXXX',
                        ),
                      ],
                    )
                  : PaymentType.value == 'Banks'
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/bank1.png',
                              height: 80,
                              width: 100,
                              fit: BoxFit.fill,
                            ),
                            Image.asset(
                              'assets/images/bank2.png',
                              height: 80,
                              width: 100,
                              fit: BoxFit.fill,
                            ),
                          ],
                        )
                      : SizedBox(
                height: 100,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return Image.asset(
                              'assets/images/other${index+1}.png',
                              height: 80,
                              width: 100,
                              fit: BoxFit.fill,
                            );
                          },
                          itemCount: 4,
                        ),
                      ),
            ],
          );
        }),
      ],
    );
  }
}
