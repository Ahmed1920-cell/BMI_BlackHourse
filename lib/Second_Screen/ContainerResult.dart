import 'dart:ui';
import 'dart:ui';

import 'package:flutter/material.dart';

import '../componant/appconsetant.dart';

class Containerresult extends StatelessWidget {
Containerresult({required this.result});
final double result;
 Color get ColorResult{
  if (result<=18.4)
    return Colors.yellow;
  else if(result>=18.5 && result<=24.9)
    return Colors.green;
  else if(result>=25 && result<=39.9)
  return Colors.orange;
  else
  return Colors.red;
}
String get TextResult{
  if (result<=18.4)
    return "UnderWeight";
  else if(result>=18.5 && result<=24.9)
    return "Normal";
  else if(result>=25 && result<=39.9)
    return "Overweight";
  else
    return "Obsese";
}
String get DescrebitionResult{
  if (result<=18.4)
    return "You Have a UnderWeight Body ,\n Try to eat more.";
  else if(result>=18.5 && result<=24.9)
    return "You Have a Normal Body Weight,\n Good Job.";
  else if(result>=25 && result<=39.9)
    return "You Have a Overweight Body ,\n Try to eat less";
  else
    return "You Have a Obsese Body ,\n Try to eat less and exercise.";
}
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 319,
      height: 503,
      decoration: BoxDecoration(
        color: AppConstant.ContainerColor,
        borderRadius: BorderRadius.circular(15),
      ),
      //margin: EdgeInsets.all(8),
      child:Column(
        children: [
          SizedBox(height: 40,),
          Text(TextResult,style: TextStyle(color: ColorResult,fontSize: 20,fontWeight: FontWeight.bold),),
          SizedBox(height: 40,),
          Text(result.toStringAsFixed(2),style: TextStyle(color: Colors.white,fontSize: 64,fontWeight: FontWeight.bold),),
          SizedBox(height: 40,),
          Center(child: Text(textAlign: TextAlign.center,DescrebitionResult,style: TextStyle(color: AppConstant.TextColor,fontSize: 16),)),

        ],

      ),
    );
  }
}
