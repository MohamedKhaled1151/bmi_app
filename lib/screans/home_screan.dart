

import 'package:bmi_app/widget/description_person.dart';
import 'package:bmi_app/widget/gender_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScrean extends StatefulWidget {
  const HomeScrean({super.key});

  @override
  State<HomeScrean> createState() => _HomeScreanState();
}

class _HomeScreanState extends State<HomeScrean> {
   bool isMale=true;
   int height=100;
   int weight=65;
   int age=15;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xff1C2135),
      bottomNavigationBar:
      Container(alignment: Alignment.center,
        height: 100,
        color: Color(0xFFE83D67),
        child: Text("Calculate",style: TextStyle(fontSize: 32,fontWeight: FontWeight.w600,color: Colors.white),),

      ),
      appBar: AppBar(
        backgroundColor: Color(0xff24263B),
        centerTitle: true,
        title: Text("BMI Calculator",style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),),

      ),
        body: Padding(padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 26),
        child:SingleChildScrollView(
            child: Column(
          children: [Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [ Expanded(child:GenderContainer(svgIcoin: "assets/images/material-symbols_male.svg",
              title: "Male",
             isActive: isMale,
            onTap: (){
              setState(() {
                isMale=true;
              });
            },),

            ),
              SizedBox(width: 9,),
              Expanded(child:GenderContainer(svgIcoin: "assets/images/material-symbols_female.svg",
                title: "Female",
              isActive: !isMale,
              onTap: (){
                setState(() {
                  isMale=false;
                });
              },))
            ],
          ) , //Gender
            SizedBox(height: 25,),
            Container( padding: EdgeInsets.symmetric(vertical: 27,),
              decoration: BoxDecoration(
                color: Color(0xff333244),
                borderRadius: BorderRadius.circular(12),

              ),
              child: Column(
                children: [
                  Text("Height",style: TextStyle(fontWeight:FontWeight.w300,fontSize: 30,color: Colors.white ),
                  ),
                  Text.rich( TextSpan(children:[
                    TextSpan(text:height.toString() ,style: TextStyle(fontSize: 40,fontWeight: FontWeight.w700,color: Colors.white,)),
                    TextSpan(text: "cm",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white,fontSize: 15,))
                  ]
                  )
                  ),
                  Slider( max: 200,min: 1,
                      activeColor: Color(0xFFE83D67),
                      value:height.toDouble() ,onChanged: (v){
                      setState(() {
                        height=v.toInt();
                      });
                      })
                ],
              ),
            ),
            SizedBox(height:29 ,),
            Row(
              children: [
                Expanded(child: DescriptionPerson(addonPressed:(){
                 setState(() {
                   weight++;
                 });
                },
                    minusonPressed: (){
                      if(weight>0){
                      }
                      setState(() {
                        weight--;
                      });
                    },
                    title: "Weight", value: weight.toString())),
                SizedBox(width: 9,),
                Expanded(child:  DescriptionPerson(addonPressed: (){

                  setState(() {
                    age++;
                  });
                },minusonPressed: (){
                  if(age>0){}
                  setState(() {
                    age--;
                  });
                    },title: "age", value: age.toString())),
              ],
            )
          ],
        )),

        )

    );
  }
}
