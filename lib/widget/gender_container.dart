

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GenderContainer extends StatelessWidget {
   final String svgIcoin;
   final String title;
   final bool isActive;
  final void Function()?onTap;

  const GenderContainer({super.key, required this.svgIcoin, required this.title, this.onTap, this.isActive= false});

  @override
  Widget build(BuildContext context) {
    return  InkWell(
        onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 20,
        ),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: isActive? Color(0xffE83D67) :Color(0xff24263B),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column (
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(svgIcoin),
            Text(title,style: TextStyle(color: Color(0xff8B8C9E),
              fontSize: 20,
              fontWeight:FontWeight.w400,
            ),
            ),
          ],
        ),


      ),
    );
  }
}
