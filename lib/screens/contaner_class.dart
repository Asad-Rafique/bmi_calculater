import 'package:flutter/material.dart';



class refecter_contaner extends StatelessWidget {
 refecter_contaner({required this.colors,required this.coutom_widget,});
  final Color colors;
  final Widget coutom_widget;

  @override
  Widget build(BuildContext context) {
    return Container(
         margin: EdgeInsets.all(20),
         child: coutom_widget,
         decoration: BoxDecoration(
           color: colors,
           borderRadius: BorderRadius.all(Radius.circular(10))),
    );
  }
}
