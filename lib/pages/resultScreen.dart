import 'package:bmi_calculator/core/appColors.dart';
import 'package:flutter/material.dart';

class Resultscreen extends StatelessWidget {
  const Resultscreen({super.key, required this.result});
  final double result;

  @override
  Widget build(BuildContext context) {
    String category = getBMICategory(result);

    return Scaffold(
      backgroundColor: Appcolors().primaryColor,
      appBar: AppBar(
        backgroundColor: Appcolors().primaryColor,
        centerTitle: true,
        title: Text(
          'Result',
          style: TextStyle(color: Appcolors().textColor),
        ),
      ),
      body: Center(
        child: Container(
          width: 350,
          height: 600,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Appcolors().secColor,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                category,     
                style: const TextStyle(
                  color: Color.fromARGB(255, 255, 0, 0),
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'Result is',
                style: TextStyle(color: Appcolors().textColor, fontSize: 30),
              ),
              Text(
                result.toStringAsFixed(2),
                style: TextStyle(
                  color: Appcolors().textColor,
                  fontSize: 30,
                ),
              ),
              const SizedBox(height: 100),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'It is recommended to seek medical advice',
                    style: TextStyle(color: Appcolors().sideColor),
                  ),
                  Text(
                    'if the result is below 18 or above 25',
                    style: TextStyle(color: Appcolors().sideColor),
                  ),
                  Text(
                    'as the clinically accepted normal range is',
                    style: TextStyle(color: Appcolors().sideColor),
                  ),
                  Text(
                    'between 18.5 and 24.9',
                    style: TextStyle(color: Appcolors().sideColor),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

String getBMICategory(double bmi) {
  String category = "";

  if (bmi < 18.5) {
    category = "Underweight";
  } else if (bmi >= 18.5 && bmi <= 24.9) {
    category = "Normal weight";
  } else if (bmi >= 25 && bmi <= 29.9) {
    category = "Overweight";
  } else if (bmi >= 30 && bmi <= 34.9) {
    category = "Obesity Class I";
  } else if (bmi >= 35 && bmi <= 39.9) {
    category = "Obesity Class II";
  } else if (bmi >= 40) {
    category = "Obesity Class III (Severe)";
  }

  return category;
}