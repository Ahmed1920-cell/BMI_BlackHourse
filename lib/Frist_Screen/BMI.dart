import 'dart:math';

import 'package:flutter/material.dart';
import 'package:test_f/Frist_Screen/task1.dart';
import 'package:test_f/Frist_Screen/task2.dart';
import 'package:test_f/Second_Screen/Result.dart';

import '../componant/appconsetant.dart';

class APP extends StatefulWidget {
  APP({super.key});

  @override
  State<APP> createState() => _APPState();
}

class _APPState extends State<APP> {
  double heghit=150;
  double weghit=60;
  double age=30;
  bool IsMale=true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        backgroundColor: AppConstant.ScaffoldBackgroundColor,
        appBar: AppBar(
          backgroundColor: AppConstant.AppBarBackgroundColor,
          centerTitle: true,
          title: Text("BMI Calculator",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.white),),
        ),
        body:Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ContainerGender(image: "images/male.png",text: "Male",change: (){
                  setState(() {
                    IsMale=!IsMale;
                  });
                },IsMale: IsMale,),
                ContainerGender(image: "images/female.png",text: "Female",change: (){
                  setState(() {
                    IsMale=!IsMale;
                  });
                },IsMale: !IsMale),
              ],
            ),
            SizedBox(height: 40,),
            Container(
              child:Column(
                children: [
                  Text("Height",style: TextStyle(fontSize: 20,color: Color(0xff8B8C9E)),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("${heghit.toInt()}",style: TextStyle(fontSize: 40,color: Colors.white),),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text("cm",style: TextStyle(fontSize: 15,color: Colors.white),),
                      ),
                    ],
                  ),
                  Slider(min: 50,max:400,value: heghit,
                    secondaryTrackValue: 100
                    ,onChanged: (value){
                      setState(() {
                        heghit=value;
                      });
                    },inactiveColor: Colors.white,activeColor: AppConstant.sliderColor,),
                  Row(
                    children: [
                      ContainerWeight(text: "Weight", value: weghit.toInt().toString(), decrease: (){
                        setState(() {
                          if(weghit>5)
                            weghit--;
                        });
                      }, increment: (){
                        setState(() {
                          if(weghit<250)
                            weghit++;
                        });
                      }),
                      ContainerWeight(text: "Age", value: age.toInt().toString(), decrease: (){
                        setState(() {
                          if(age>0)
                            age--;
                        });
                      }, increment: (){
                        setState(() {
                          if(age<500)
                            age++;
                        });
                      }),
                    ],
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>Result(result: (weghit/pow(heghit/100, 2)),)),(route)=>false);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      height: 100,
                      decoration: BoxDecoration(
                        color: AppConstant.sliderColor,
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight:Radius.circular(15), ),
                      ),
                      child: Text("Calculate",style: TextStyle(fontSize: 40,color: Colors.white)),
                    ),
                  )

                ],
              ),
            )
          ],
        ) ,
      ),
    );
  }
}