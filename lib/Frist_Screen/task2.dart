import 'package:flutter/material.dart';

import '../componant/appconsetant.dart';

class ContainerWeight extends StatelessWidget {
  ContainerWeight({super.key,required this.text,required this.value,required this.decrease,required this.increment});
final String text;
final String value;
final VoidCallback increment;
  final VoidCallback decrease;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 155,
      height: 180,
      decoration: BoxDecoration(
        color: AppConstant.AppBarBackgroundColor,
        borderRadius: BorderRadius.circular(15),
      ),
      margin: EdgeInsets.all(8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(text,style: TextStyle(fontSize: 20,color: Color(0xff8B8C9E))),
          Text(value,style: TextStyle(fontSize: 40,color: Colors.white)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: decrease,
                child: CircleAvatar(
                  backgroundColor: AppConstant.TextColor,
                  child: Icon(Icons.remove,size: 30,color: Colors.white,),
                ),
              ),
              InkWell(
                onTap: increment,
                child: CircleAvatar(
                  backgroundColor: AppConstant.TextColor,
                  child: Icon(Icons.add,size: 30,color: Colors.white,),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
