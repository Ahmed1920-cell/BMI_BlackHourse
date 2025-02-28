import 'package:flutter/material.dart';
import 'package:test_f/Frist_Screen/BMI.dart';
import 'package:test_f/Second_Screen/ContainerResult.dart';

import '../componant/appconsetant.dart';

class Result extends StatelessWidget {
  const Result({super.key,required this.result});
final double result;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstant.ScaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: AppConstant.AppBarBackgroundColor,
        centerTitle: true,
        title: Text("BMI Calculator",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.white),),
      ),
      body: Container(
        padding: EdgeInsets.all(5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Your Result",style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold)),
            Center(child: Containerresult(result: result,)),
            Spacer(),
            InkWell(
                onTap: (){
                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>APP()),(route)=>false);
                },
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 100,
                decoration: BoxDecoration(
                  color: AppConstant.sliderColor,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight:Radius.circular(15), ),
                ),
                child: Text("Re - Calculate",style: TextStyle(fontSize: 40,color: Colors.white)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
