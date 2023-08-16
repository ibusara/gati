import 'package:flutter/material.dart';
import 'package:gati_app/views/widgets/next_button.dart';
import 'package:get/get.dart';

import '../../helpers/constants.dart';

class ItemLicense extends StatelessWidget {
  ItemLicense({Key? key}) : super(key: key);
  RxBool _customTileExpanded = false.obs;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Container(
        decoration: BoxDecoration(
          borderRadius: _customTileExpanded.value ? BorderRadius
              .circular(15) : BorderRadius.circular(44),
          gradient: gradientStyle,
        ),
        child: ClipRRect(
          borderRadius:  _customTileExpanded.value ? BorderRadius
              .circular(15) : BorderRadius.circular(44),
          child: ExpansionTile(
            leading: Container(
              height: 50,width: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: whiteColor,
              ),
              child: Center(child: Image.asset('assets/images/home.png',height: 20,width: 20,)),
            ),
            title: Text('Radio Listening',style: expansionTitleStyle,),
            subtitle: Text('xxxxxx-erxxxx',style: subTitleStyle,),
            trailing: Icon(
              _customTileExpanded.value
                  ? Icons.arrow_drop_down_circle_outlined
                  : Icons.arrow_circle_right_outlined,
              color:Colors.white,
            ),
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 40,),
                  Row(
                       crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 40,),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('License Name:',style: expendedContentStyle,),
                            SizedBox(height: 30,),
                            Text('License Key:',style: expendedContentStyle,),
                            SizedBox(height: 30,),
                            Text('Status:',style: expendedContentStyle,),
                            SizedBox(height: 30,),
                            Text('Memory No:',style: expendedContentStyle,),
                            SizedBox(height: 30,),
                            Text('Expiry Date:',style: expendedContentStyle,),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Radio Listening',style: expendedContentStyle,),
                            SizedBox(height: 30,),
                            Text('xxxxx-xxxxx-xx',style: expendedContentStyle,),
                            SizedBox(height: 30,),
                            Text('Active',style: expendedContentStyle.copyWith(color: Colors.lightGreenAccent),),
                            SizedBox(height: 30,),
                            Text('-------------------',style: expendedContentStyle,),
                            SizedBox(height: 30,),
                            Text('18/04/2023',style: expendedContentStyle,),
                          ],
                        ),
                      ),
                      SizedBox(width: 40,),

                    ],
                  ),
                  SizedBox(height: 50,),
                  InkWell(
                    onTap: (){},
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 12,horizontal: 30),
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Text('Download PDF',style: btn_textStyle.copyWith(color: btnColor),),
                    ),
                  ),
                  SizedBox(height: 50,),
                ],
              )
            ],
            onExpansionChanged: (bool expanded) {
              _customTileExpanded.value = expanded;
            },
          ),
        ),
      );
    });
  }
}
