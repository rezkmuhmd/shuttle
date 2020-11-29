import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shuttle_meal_app/pages/home/components/main_body.dart';
import 'package:shuttle_meal_app/utils/constants.dart';

class HomeProduct extends StatefulWidget {
  static String homeProductRouteName = '/routename';
  @override
  _HomeProductState createState() => _HomeProductState();
}

class _HomeProductState extends State<HomeProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:// There’s a strange appbar when use HomeProduct in home in main.dart  show appbar in left like screen in task 
      //but when use HomeProduct in navigator like from next button   show appbar in center like this when debug.
      // i don’t know what happen
       AppBar(
        elevation: 0,
        backgroundColor: kWhiteColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SvgPicture.asset(
              'assets/icons/icn_delivery.svg',
              color: ksecondColor,
            ),
            SizedBox(
              width: 5,
            ),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                  text: 'Delivery to',
                  style: Theme.of(context).textTheme.subtitle1.copyWith(
                      color: kBlackColor.withOpacity(0.7),
                      fontWeight: FontWeight.normal)),
              TextSpan(
                  text: ' STC ',
                  style: Theme.of(context).textTheme.subtitle1.copyWith(
                      color: kBlackColor, fontWeight: FontWeight.bold))
            ])),
            InkWell(
              child: SvgPicture.asset('assets/icons/icn_drop.svg'),
              onTap: () {
                print('stc');
              },
            )
          ],
        ),
      ),
      body: Body(),
    );
  }
}
