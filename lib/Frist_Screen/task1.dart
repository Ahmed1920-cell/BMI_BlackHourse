import 'package:flutter/material.dart';
import 'package:test_f/componant/appconsetant.dart';

class ContainerGender extends StatelessWidget {
  ContainerGender({super.key,required this.image,required this.text,required this.IsMale,required this.change});
final String image;
final String text;
final bool IsMale;
final VoidCallback change;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: change,
      child: Container(
        width: 155,
        height: 180,
        decoration: BoxDecoration(
          color: AppConstant.AppBarBackgroundColor,
          border: IsMale?Border.all(color: AppConstant.sliderColor,width: 2):null,
          borderRadius: BorderRadius.circular(15),
        ),
        margin: EdgeInsets.all(8),
        child: Column(
          children: [
            Image.asset(image,width: 144,height: 144,),
            Text(text,style: TextStyle(fontSize: 20,color: AppConstant.TextColor),)
          ],
        ),
      ),
    );
  }
}
