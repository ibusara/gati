import 'package:get/get.dart';

class UiController extends GetxController{
   RxString selectedCat = 'License'.obs;
   RxString liensenceType = 'Broadcasting'.obs;
   RxString businessType = 'Anything'.obs;
   RxString musicDevice = 'Majora Adile'.obs;
  RxBool agree = false.obs;
  RxBool remember = false.obs;
   List categoryList = [
     'Copy right',
     'License'
   ];
   List liensenceTypeList = [
     'Broadcasting',
     'Other'
   ];
   List businessTypeList = [
     'Anything',
     'Tech',
   ];
   List musicDeviceList = [
     'Majora Adile',
     'Other',
   ];
}