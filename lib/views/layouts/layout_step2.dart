import 'package:flutter/material.dart';
import 'package:gati_app/views/widgets/custom_input_field2.dart';

class LayoutStep2 extends StatelessWidget {
  LayoutStep2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomInputField2(label: 'Owner *',),
        CustomInputField2(label: 'Manager *',),
      ],
    );
  }
}
