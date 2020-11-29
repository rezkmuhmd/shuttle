import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shuttle_meal_app/pages/home/components/cutom_card.dart';

import 'package:shuttle_meal_app/utils/constants.dart';

class BestValue extends StatelessWidget {
  final String title;
  const BestValue({
    Key key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SvgPicture.asset(
          title,
          color: kBlackColor,
        ),
        SizedBox(
          height: 7,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BestCard(
                imge: 'assets/images/f4.jpg',
              ),
              BestCard(
                imge: 'assets/images/f5.jpg',
              ),
              BestCard(
                imge: 'assets/images/f1.jpg',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
