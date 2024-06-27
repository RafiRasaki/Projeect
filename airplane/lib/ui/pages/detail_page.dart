import 'package:airplane/models/destination_model.dart';
import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/pages/choose_seat_page.dart';
import 'package:airplane/ui/widgets/custom_button.dart';
import 'package:airplane/ui/widgets/interest_item.dart';
import 'package:airplane/ui/widgets/photo_item.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DetailPage extends StatelessWidget {

  final DestinationModel destination;

  const DetailPage(this.destination,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget backgroundImage(){
      return Container(
        width: double.infinity,
        height: 450,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
              destination.imageUrl,
            ),
          ),
        ),
      );
    }

    Widget customShadow(){
      return Container(
        width: double.infinity,
        height: 214,
        margin: EdgeInsets.only(top: 236),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              kWhiteColor.withOpacity(0),
              Colors.black.withOpacity(0.95),
            ]
          ),
        ),
      );
    }

    Widget content(){
      return Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(
          horizontal: defaultMargin, 
        ),
        child: Column(
          children: [
            // NOTE : EMBLEM
            Container(
              width: 108,
              height: 24,
               margin: EdgeInsets.only(
               top: 30,         
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/icon_emblem.png',
                  ),
                ),
              ),
            ),

            //NOTE: TITLE
            Container(
              margin: EdgeInsets.only(top: 256),
              child: Row(
                children: [
                  Expanded(
                   child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        destination.name,
                         style: whiteTextStyle.copyWith(
                          fontSize: 24,
                          fontWeight: semiBold,
                         ),
                         overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        destination.city,
                        style: whiteTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: light,
                        ),
                      )
                    ],
                  ),
                ),
                   Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 20,
                            height: 20,
                            margin: EdgeInsets.only(right: 2),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  'assets/icon_Star.png',
                                  ),
                                ),
                            ),
                          ),
                          Text(
                            destination.rating.toString(),
                            style: whiteTextStyle.copyWith(
                              fontWeight: medium,
                            ),
                          ),
                        ],
                      ),
                ],
              ),
            ),
        
            //NOTE: DESCRIPTION
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 20,),
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 30,
              ),
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //NOTE: ABOUT
                  Text(
                    'About',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                  SizedBox(height: 6,),
                  Text(
                    destination.about,
                    style: blackTextStyle.copyWith(
                      height: 2,
                    ),
                    ), 
                  SizedBox(
                    height: 5,
                  ),
            
                   //NOTE: INTENERARY
                   SizedBox(height: 20,),
                   
                    Text(
                    'Itenerary',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                     Text(
                      'Day 1',
                      style: blackTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: regular,
                      ),
                     ),
                  SizedBox(
                    height: 6,
                  ),
                  Row(
                    children: [
                      InterestItem(
                        text: destination.itenerary1,
                      ), 
                    ],
                   ), 
                    SizedBox(
                    height: 10,
                    ),
                  Row(
                    children: [
                      InterestItem(
                        text: destination.itenerary2,
                      ),
                    ],
                   ),
                   SizedBox(
                    height: 10,
                    ),
                  Row(
                    children: [
                      InterestItem(
                        text: destination.itenerary3,
                      ),
                    ],
                   ),
                   SizedBox(
                    height: 10,
                    ),
                   Row(
                    children: [
                      InterestItem(
                        text: destination.itenerary4,
                      ),
                    ],
                   ),
                    SizedBox(
                    height: 10,
                    ),
                    Text(
                      'Day 2',
                      style: blackTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: regular,
                      ),
                     ),
                     SizedBox(
                    height: 6,
                  ),
                    Row(
                    children: [
                      InterestItem(
                        text: destination.itenerary5,
                      ),
                    ],
                   ),
                   SizedBox(
                    height: 10,
                    ),
                    Row(
                    children: [
                      InterestItem(
                        text: destination.itenerary6,
                      ),
                    ],
                   ),
                   SizedBox(
                    height: 10,
                    ),
                   Row(
                    children: [
                      InterestItem(
                        text: destination.itenerary7,
                      ),
                    ],
                   ),
                    SizedBox(
                    height: 10,
                    ),
                    Row(
                    children: [
                      InterestItem(
                        text: destination.itenerary8,
                      ),
                    ],
                   ),
                   SizedBox(
                    height: 10,
                    ),
                   Text(
                      'Masakapai',
                      style: blackTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: semiBold,
                      ),
                     ),
                     SizedBox(
                    height: 7,
                    ),
                    Container(
                       width: 60,
                       height: 60,
                       margin: EdgeInsets.only(right: 2),
                       decoration: BoxDecoration(
                          image: DecorationImage(
                          image: NetworkImage(
                            destination.maskapai,
                                 ),
                               ),
                            ),
                          ),
                ],
              ),
            ),

            //NOTE: PRICE & BOOK BUTTON
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(vertical: 30),
              child: Row(
                children: [
                  //NOTE: PRICE
                  Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        NumberFormat.currency(
                          locale: 'id',
                          symbol: 'IDR ', 
                          decimalDigits: 0,)
                        .format(destination.price),
                        style: blackTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: medium,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'per orang',
                        style: greyTextStyle.copyWith(
                          fontWeight: light
                        ),
                      ),
                    ],
                  ),
                ),

                  //NOTE: BOOK BUTTON
                  CustomButton(
                  title: 'Book Now', 
                  onPressed:(){
                    Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (context) => ChooseSeatPage(destination),
                    ),
                   );
                  }, 
                  width:170,
                  ),
                ],
              ),
            ),
        
          ],
        ),
      );
    }
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
      child: Stack(
        children: [
          backgroundImage(),
          customShadow(),
          content(),
        ],
      ),
    ),
    );
  }
}