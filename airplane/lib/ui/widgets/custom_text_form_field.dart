import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {

  final String title;
  final String hintText;
  final bool obsecureText;
  final TextEditingController controller;

  const CustomTextFormField({
    Key? key, 
    required this.title, 
    required this.hintText, 
    this.obsecureText = false,
    required this.controller,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
          margin: EdgeInsets.only(bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
              ),
              SizedBox(
                height: 6,
                ),
              TextFormField(
                cursorColor: kBlackColor,
                obscureText: obsecureText,
                controller: controller,
                decoration: InputDecoration(
                  hintText: hintText,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      defaultRadius,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      defaultRadius,
                    ),
                    borderSide: BorderSide(
                      color: kPrimaryColor,
                    )
                  )
                ),
              ),
            ],
          ),
        );
  }
}