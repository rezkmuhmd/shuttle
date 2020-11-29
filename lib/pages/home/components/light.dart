import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shuttle_meal_app/pages/home/components/cutom_card.dart';
import 'package:shuttle_meal_app/pages/home/components/menues_body.dart';
import 'package:shuttle_meal_app/utils/constants.dart';

class Light extends StatelessWidget {
  const Light({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SvgPicture.asset(
          'assets/icons/title_light.svg',
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
              Container(
                margin: EdgeInsets.only(left: 10),
                width: 150,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        //go to detail screen of product but I don’t make this screen ,Sorry. 
                      },
                      child: Container(
                        height: 200,
                        child: CardImage(
                          image: 'assets/images/f1.jpg',
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                      height: 20,
                      child: Padding(
                        padding: EdgeInsets.only(left: 40),
                        child: LastPrice(price: '52.00'),
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                      height: 20,
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
                        ],
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
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                width: 150,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 200,
                      child: CardImage(
                        image: 'assets/images/f2.jpg',
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                      height: 20,
                      child: Padding(
                        padding: EdgeInsets.only(left: 40),
                        child: CurrentPrice(
                          price: '52.00',
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                      height: 20,
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
                          LastPrice(
                            price: '30.00',
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                      child: NameCard(
                        name: 'Tofu Pad Thai ',
                      ),
                    ),
                    SizedBox(height: 5),
                    UnderNameCard(
                      name: 'Thai food',
                    ),
                  ],
                ),
              ),
              BestCard(imge: 'assets/images/f3.jpg'),
            ],
          ),
        ),
      ],
    );
  }
}

