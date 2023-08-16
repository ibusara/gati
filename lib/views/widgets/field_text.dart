import 'package:custom_utils/custom_utils.dart';
import 'package:flutter/material.dart';

import '../../helpers/constants.dart';

class FieldText extends StatelessWidget {
  String title;
  FieldText({required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(title,style: TextStyle(color: appTextColor, fontSize: 16),);
  }
}
