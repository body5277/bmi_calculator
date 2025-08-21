import 'package:bmi_calculator/core/appColors.dart';
import 'package:bmi_calculator/widgets/gender_card.dart';
import 'package:flutter/material.dart';

class Bmicalculator extends StatefulWidget {
  const Bmicalculator({super.key});

  @override
  State<Bmicalculator> createState() => _BmicalculatorState();
}

class _BmicalculatorState extends State<Bmicalculator> {
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
            
            onPressed: (){}, child: Text('Calculate',
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
                Text('190',style: TextStyle(
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

            Slider(value: 190, onChanged: (V){},min: 80,max: 220,activeColor: Appcolors().sideColor,inactiveColor: Appcolors().primaryColor,)
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
          genderCard(title: 'Male', icon: Icons.male,color: Appcolors().secColor,),
          genderCard(title: 'Female', icon: Icons.female,color: Appcolors().sideColor,),

        ],
      ));
  }

 Expanded ageAndWeight() {
    return Expanded(child: 
      Row(
        spacing: 10,
        children: [
          genderCard(title: 'Male', icon: Icons.male,color: Appcolors().secColor,),
          genderCard(title: 'Female', icon: Icons.female,color: Appcolors().sideColor,),

        ],
      ));
  }
}
