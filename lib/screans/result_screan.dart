


import 'package:bmi_app/themes/app_colors.dart';
import 'package:bmi_app/widget/customer_app_bar.dart';
import 'package:flutter/material.dart';
class ResultScrearn extends StatelessWidget {
  const ResultScrearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            backgroundColor: AppColors.backgroundColor,

          appBar: CustomerAppBar(),
           body: Padding(padding:EdgeInsets.symmetric(),
              child: Column(
                children: [
                  Text("Your Result",style: TextStyle(color: Colors.white,
                 fontSize: 40,
                  fontWeight: FontWeight.w700),),
                ],
              ),
           ),

    );
  }
}


