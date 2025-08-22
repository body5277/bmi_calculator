import 'package:bmi_calculator/core/appColors.dart';
import 'package:bmi_calculator/pages/resultScreen.dart';
import 'package:bmi_calculator/widgets/gender_card.dart';
import 'package:bmi_calculator/widgets/weight_and_age.dart';
import 'package:flutter/material.dart';

class Bmicalculator extends StatefulWidget {
  const Bmicalculator({super.key});

  @override
  State<Bmicalculator> createState() => _BmicalculatorState();
}

class _BmicalculatorState extends State<Bmicalculator> {
  int weight = 150;
  int age = 26;
  int slideHeight = 190 ; 
  bool isMale = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors().primaryColor,
      appBar: AppBar(
        backgroundColor: Appcolors().primaryColor,
        centerTitle: true,
        title: Text(
          'Bmi Calculator',
          style: TextStyle(color: Appcolors().textColor, fontSize: 25),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          spacing: 10,
          children: [
        
         //male and female 
        maleAndFemale(),
        
        
        
         //height
        height(),
        
        
        
         //weight and age
        ageAndWeight(),
        
        
        
         //button
         SizedBox(
          width: double.infinity,
          height: 50,
           child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),
              backgroundColor: Appcolors().sideColor
            ),
            
            onPressed: (){
              double result = weight / (slideHeight*slideHeight*0.0001);
              
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Resultscreen(result:result)));
            }, 
            
            child: Text('Calculate',
            style: TextStyle(
              fontSize: 15,
              color: Appcolors().secColor
            ),)),
         )
        
          ],
        ),
      ),
    );
  }

  Expanded height() {
    return Expanded(child: Container(decoration: 
      BoxDecoration(
        color: Appcolors().secColor,
        borderRadius: BorderRadius.circular(10)
        ),
        child: Column(spacing: 10,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Height',style: TextStyle(
              color: Appcolors().whiteColor,
              fontSize: 40
            ),),
            Row(      
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(slideHeight.toString(),style: TextStyle(
                  color: Appcolors().whiteColor,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),),
                
                Text('cm',style: TextStyle(
                  color: Appcolors().whiteColor,
                  fontSize: 25,

                ),),
              ],
            ),

            Row(),

            Slider(value: slideHeight.toDouble(), onChanged: (value){setState(() {
              slideHeight=value.toInt();
            });},min: 80,max: 220,activeColor: Appcolors().sideColor,inactiveColor: Appcolors().primaryColor,)
          ],
        ),
       )
      );
  }

  Expanded maleAndFemale() {
    return Expanded(child: 
      Row(
        spacing: 10,
        children: [
          genderCard(title: 'Male', icon: Icons.male,
          color: isMale? Appcolors().secColor : Appcolors().sideColor,
          onTap: (){
            setState(() {
              isMale=true;
            });
          },),
          genderCard(title: 'Female', icon: Icons.female,
          color: !isMale? Appcolors().secColor : Appcolors().sideColor,
          onTap: (){
      setState(() {
        isMale = false;
      });
          },),

        ],
      ));
  }

 Expanded ageAndWeight() {
    return Expanded(child: 
      Row(spacing: 10,
  children: [
    weightAndAge(title:'Age',numTitle:age,onAdd:() {setState(() {
      age++;
    });},onRemove: () {
      if (age>19){setState(() {
        age--;
      });}
    },),
    weightAndAge(title:'weight',numTitle:weight, onAdd:() {setState(() {
      weight++;
    });},onRemove: () {
      if(weight>45){setState(() {
        weight--;
      });}
    },)
  ],
)    ,
);
  }
}
