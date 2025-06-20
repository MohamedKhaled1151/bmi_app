


import 'package:bmi_app/screans/home_screan.dart';
import 'package:flutter/material.dart';

class BmiApp extends  StatelessWidget {
   const BmiApp({super.key});

   @override
   Widget build(BuildContext context) {
     return const MaterialApp(
       debugShowCheckedModeBanner: false,
       home: HomeScrean(),

     );
   }
 }
