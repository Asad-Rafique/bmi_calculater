import 'package:bmi_calculater_app/screens/constentfile.dart';
import 'package:flutter/material.dart';



class icons_text_widget_class extends StatelessWidget {
  icons_text_widget_class({required this.iconsdata,required this.labol,});
 final IconData iconsdata;
 final String labol;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      Icon(
        iconsdata,
      size: 60.0,),
      Text(
        labol,
      style: konstent),
    ],);
  }
}
