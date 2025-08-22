import 'package:bmi_calculator/core/appColors.dart';
import 'package:flutter/material.dart';

class weightAndAge extends StatelessWidget {
  const weightAndAge({ required this.title,required this.numTitle,  
    super.key, required this.onAdd, required this.onRemove,
  });
  
  final String title ;
  final int numTitle ;
  final Function() onAdd;
  final Function() onRemove;


  @override
  Widget build(BuildContext context) {
    return Expanded(child: Container(
          decoration: BoxDecoration(
    color: Appcolors().secColor,
    borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Text(title,style: TextStyle(color: Appcolors().whiteColor,fontSize: 30),),
    Text(numTitle.toString(),style: TextStyle(color: Appcolors().whiteColor,fontSize: 30),),
    Row(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(onPressed: onAdd , 
        icon:Icon(Icons.add) , color:Appcolors().sideColor , ),
        IconButton(onPressed: onRemove , 
        icon:Icon(Icons.remove) , color:Appcolors().sideColor ,),
      ],
    ),
    
          ],
          ),
         )
        );
  }
}
