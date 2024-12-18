import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class InterestItem extends StatelessWidget {

  final String text;

  const InterestItem({Key? key, 
  required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
         children:[
           Container(
            width: 16,
            height: 16,
            margin: EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
             image: DecorationImage(
             fit: BoxFit.cover,
             image: AssetImage(
              'assets/icon_check.png',
             ),
           ),
         ),
       ),
       Expanded(
         child: Text(
          text,
           style: blackTextStyle,
          ),
       ),
      ],
    ),
  );
  }
}