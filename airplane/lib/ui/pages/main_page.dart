import 'package:airplane/cubit/page_cubit.dart';
import 'package:airplane/models/transaction_model.dart';
import 'package:airplane/ui/pages/home_page.dart';
import 'package:airplane/ui/pages/settings_page.dart';
import 'package:airplane/ui/pages/transaction_page.dart';
import 'package:airplane/ui/pages/wallet_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../shared/theme.dart';
import '../widgets/custom_bottom_navigation_item.dart';


class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildContent(int currentIndex){
      switch (currentIndex) {
        case 0:
          return HomePage();
        case 1:
          return TransactionPage();
        /*case 2:
          return WalletPage(TransactionModel(
            destination: destination,
            ));*/
        case 3:
          return SettingsPage();
        default:
          return HomePage();
      }
    }

    Widget customButtonNavigation(){
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 60,
          margin: EdgeInsets.only(
            bottom: 10,
            left: defaultMargin,
            right: defaultMargin
            ),
          decoration: BoxDecoration(
           color: kWhiteColor, 
           borderRadius: BorderRadius.circular(18),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
             CustomBottomNavigationItem(
              index: 0,
              imageUrl: 'assets/icon_home.png',
              ),
              CustomBottomNavigationItem(
              index: 1,
              imageUrl: 'assets/icon_booking.png',
              ),
               
               CustomBottomNavigationItem(
              index: 3,
              imageUrl: 'assets/icon_settings.png',
              ),
            ],
          ),
        ),
      );
    }
    
    return BlocBuilder<PageCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
          backgroundColor: kBackgroundColor,
          body: Stack(
          children: [
           buildContent(currentIndex),
           customButtonNavigation(),
          ],
        ),
       );
      },
     );
    }
}