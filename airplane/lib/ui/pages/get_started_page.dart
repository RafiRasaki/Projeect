import 'package:airplane/ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
           height: 800,
           width: 500,
           child: FittedBox(
            fit: BoxFit.fill,
            child: Image.asset(
              'assets/travel1.png',
              ),
           ),
          ),
          Center(
            child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
            Text(
              'Fly Like a Bird',
              style: whiteTextStyle.copyWith(
                fontSize: 32,
                fontWeight: semiBold,
              ),
             ),
             SizedBox(
              height: 10,
             ),
             Text(
              'Explore new world with us and let\nyourself get an amazing experiences',
              style: whiteTextStyle.copyWith(
                fontSize: 16,
                fontWeight: light,
              ),
              textAlign: TextAlign.center,
            ),
            CustomButton(
              title: 'Get Started',
              width: 220,
              margin: EdgeInsets.only(
                top: 50,
                bottom: 40
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/sign-up');
              },
            ),
          ],),
      ),],
      ),
    );
  }
}