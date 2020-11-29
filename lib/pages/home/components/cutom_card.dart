import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shuttle_meal_app/pages/home/components/menues_body.dart';
import 'package:shuttle_meal_app/utils/constants.dart';

class BestCard extends StatelessWidget {
  final String imge;
  const BestCard({
    Key key,
    this.imge,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10),
      width: 150,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            child: CardImage(
              image: imge,
            ),
          ),
          SizedBox(height: 5),
          Container(
            height: 20,
            child: Padding(
              padding: const EdgeInsets.only(left: 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    'assets/icons/icn_plus.svg',
                    color: kPrimaryColor,
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  CurrentPrice(
                    price: '30.00',
                  ),
                  LastPrice(
                    price: '52.00',
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 5),
          Container(
            child: NameCard(
              name: 'Mushroom-Quonoa \nburger',
            ),
          ),
          SizedBox(height: 5),
          UnderNameCard(
            name: 'GALA RESTURANT',
          ),
        ],
      ),
    );
  }
}
