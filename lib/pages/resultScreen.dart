import 'package:bmi_calculator/core/appColors.dart';
import 'package:flutter/material.dart';

class Resultscreen extends StatelessWidget {
  const Resultscreen({super.key, required this.result});
final double result ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    backgroundColor: Appcolors().primaryColor,
      appBar: AppBar(
        backgroundColor: Appcolors().primaryColor,
        centerTitle: true,
        title: Text('Result',
        style: TextStyle(
          color: Appcolors().textColor
        ),)
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Result is ',style: TextStyle(color: Appcolors().textColor),),
            Text(result.toStringAsFixed(2),style: TextStyle(
              color: Appcolors().textColor,fontSize: 30
            ),)
          ],
        ),
      ),
    );
  }
}