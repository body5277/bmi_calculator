import 'package:bmi_calculator/core/appColors.dart';
import 'package:flutter/material.dart';

class genderCard extends StatelessWidget {
  const genderCard({ super.key, required this.title,required this.icon,required this.color,required this.onTap
  });
    final String title;
   final IconData icon;
   final Color color;
   final Function() onTap;


  @override
  Widget build(BuildContext context) {
    return Expanded(child: GestureDetector(onTap : (){},
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Icon(icon,color: Appcolors().whiteColor,size: 80,),
          Text(title,style: TextStyle(color: Appcolors().whiteColor,fontSize: 30),)
        ],),
       ),
    )
    );
  }
}
