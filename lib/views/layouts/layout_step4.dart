import 'package:flutter/material.dart';
import 'package:gati_app/views/widgets/custom_input_field2.dart';
import 'package:get/get.dart';

import '../../controllers/ui_controller.dart';
import '../../helpers/constants.dart';

class LayoutStep4 extends StatelessWidget {
  LayoutStep4({Key? key}) : super(key: key);
  RxBool isEmail = false.obs;
  RxBool isFax = false.obs;
  RxBool isPost = false.obs;
  RxString differPostCode = ''.obs;
  RxString isNaturalPerson = 'Legal Identity'.obs;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Obx(() {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Radio(value: 'Legal Identity',
                          focusColor: btnColor,
                          fillColor: MaterialStateProperty.all(btnColor),
                          groupValue: isNaturalPerson.value,
                          activeColor: btnColor,
                          onChanged: (v) {
                            isNaturalPerson.value = v!;
                          }),
                      Text(
                        'Legal Identity', style: fieldTextStyle.copyWith(color: labelColr,fontSize: 12),),
                    ],
                  ),
                  SizedBox(width: 10,),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Radio(value: 'Natural Person',
                          groupValue: isNaturalPerson.value,
                          activeColor: btnColor,
                          fillColor: MaterialStateProperty.all(btnColor),
                          onChanged: (v) {
                            isNaturalPerson.value = v!;
                          }),
                      Text(
                        'Natural Person', style: fieldTextStyle.copyWith(color: labelColr,fontSize: 12),),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20,),
              isNaturalPerson.value == 'Legal Identity' ? Column(
                children: [
                  CustomInputField2(
                    label: 'Company or CC Name*',
                  ),
                  CustomInputField2(
                    label: 'Short Name or Trading Name of Company or Entity*',
                  ),
                  CustomInputField2(
                    label: 'Company or CC Registration Number*',
                  ),
                  CustomInputField2(
                    label: 'VAT Status*',
                  ),
                  CustomInputField2(
                    label: 'VAT Registration Number*',
                  ),
                ],
              ):
              Column(
                children: [
                  CustomInputField2(
                    label: 'Surname*',
                  ),
                  CustomInputField2(
                    label: 'First Name*',
                  ),
                  CustomInputField2(
                    label: 'Identity Number*',
                  ),
                ],
              ),
            ],
          );
        }),
        Align(
            alignment: FractionalOffset.centerLeft,
            child: Text(
              'Admin Contact Info',
              style: addInfoStyle,
            )),
        CustomInputField2(
          label: 'Contact First Name*',
        ),
        CustomInputField2(
          label: 'Contact Surname*',
        ),
        CustomInputField2(
          label: 'Title (Mr./Mrs.Miss/Doctor/etc.)*',
        ),
        CustomInputField2(
          label: 'Business Title or Role*',
        ),
        CustomInputField2(
          label: 'Email*',
        ),
        CustomInputField2(
          label: 'Cellular Number',
        ),
        CustomInputField2(label: 'Daytime Telephone Number *',),
        CustomInputField2(label: 'Fax Number *',),
        Align(
          alignment: FractionalOffset.centerLeft,
          child: Text(
            'Please indicate your preferred method for receiving correspondence from us:',
            textAlign: TextAlign.start,
            style: langTextStyle.copyWith(fontSize: 14),
          ),
        ),
        SizedBox(height: 20,),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Obx(() {
                  return Checkbox(
                      value: isEmail.value, onChanged: (v) {
                    isEmail.value = v!;
                  });
                }),
                SizedBox(width: 5,),
                Text(
                  'Email', style: fieldTextStyle.copyWith(color: labelColr),),
              ],
            ),
            SizedBox(width: 10,), Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Obx(() {
                  return Checkbox(
                      value: isFax.value, onChanged: (v) {
                    isFax.value = v!;
                  });
                }),
                SizedBox(width: 5,),
                Text('Fax', style: fieldTextStyle.copyWith(color: labelColr),),
              ],
            ),
            SizedBox(width: 10,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Obx(() {
                  return Checkbox(
                      value: isPost.value, onChanged: (v) {
                    isPost.value = v!;
                  });
                }),
                SizedBox(width: 5,),
                Text('Post', style: fieldTextStyle.copyWith(color: labelColr),),
              ],
            ),
          ],
        ),
        SizedBox(height: 20,),
        Align(
            alignment: FractionalOffset.centerLeft,
            child: Text('Address Info', textAlign: TextAlign.start,
              style: addInfoStyle,)),
        CustomInputField2(label: 'Building Name',),
        CustomInputField2(label: 'Unit No',),
        CustomInputField2(label: 'Street*',),
        CustomInputField2(label: 'Suburb*',),
        CustomInputField2(label: 'City/Town*',),
        CustomInputField2(label: 'Postal code*',),
        CustomInputField2(label: 'Province*',),
        CustomInputField2(label: 'Country*',),
        Align(
          alignment: FractionalOffset.centerLeft,
          child: Text(
            'Is Postal code different from above or Not?',
            style: langTextStyle.copyWith(fontSize: 14),
          ),
        ),
        SizedBox(height: 10,),
        Obx(() {
          return Row(
            children: [
              Row(
                children: [
                  Radio(value: 'yes',
                      focusColor: btnColor,
            fillColor: MaterialStateProperty.all(btnColor),
                      groupValue: differPostCode.value,
                      activeColor: btnColor,
                      onChanged: (v) {
                        differPostCode.value = v!;
                      }),
                  SizedBox(width: 10,),
                  Text(
                    'Yes', style: fieldTextStyle.copyWith(color: labelColr),),
                ],
              ),
              SizedBox(width: 30,),
              Row(
                children: [
                  Radio(value: 'no',
                      groupValue: differPostCode.value,
                      activeColor: btnColor,
                      fillColor: MaterialStateProperty.all(btnColor),
                      onChanged: (v) {
                        differPostCode.value = v!;
                      }),
                  SizedBox(width: 10,),
                  Text(
                    'No', style: fieldTextStyle.copyWith(color: labelColr),),
                ],
              ),
            ],
          );
        }),
      ],
    );
  }
}
