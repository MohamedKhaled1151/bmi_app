import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class DescriptionPerson extends StatelessWidget {
  final String title ;
  final String value;
  final void Function()? addonPressed;
  final void Function()? minusonPressed;

  const DescriptionPerson({super.key,required this.title, required this.value, this.addonPressed, this.minusonPressed});


  @override
  Widget build(BuildContext context) {
    return  Container(  width: 155,
      padding: EdgeInsets.symmetric(vertical: 16,horizontal: 16),
      decoration: BoxDecoration(
        color: Color(0xFF24263B),
      ),
      child: Column(
        children: [
          Text(title,style:  TextStyle(color: Color(0xff8B8C9E),fontSize: 20,fontWeight: FontWeight.w300),),
          Text(value,style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.w700),),
          SizedBox(height: 21,),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FloatingActionButton.small(
                  backgroundColor: Colors.white70,
                  shape:CircleBorder(),
                  onPressed: addonPressed,
                  child: Icon(Icons.add,color: Colors.white,),),
                FloatingActionButton.small(
                  backgroundColor: Colors.white70,
                  shape:CircleBorder(),
                  onPressed: minusonPressed,
                  child: Icon(Icons.remove,color: Colors.white,),)]
          )


        ],
      ),
    )
    ;
  }
}
