import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shuttle_meal_app/pages/home/components/bestvalue.dart';
import 'package:shuttle_meal_app/pages/home/components/light.dart';

import 'package:shuttle_meal_app/utils/constants.dart';

class Body extends StatefulWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    int activeMenu = 0;
    List menus = [
      "All",
      "Syami",
      "Healthy",
    ];
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              height: 230,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    'assets/icons/Meal_on_the_go.svg',
                    color: kPrimaryColor,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  // sorry____  should svg banner show all but I can use stack() to make t manually
                  SvgPicture.asset(
                    'assets/icons/banner.svg',
                    color: kPrimaryColor,
                  ),
                  // Image.asset('assets/images/banner.png'),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Order By 11:30 AM ',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  .copyWith(color: kPrimaryColor, fontSize: 17),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Select Your Meal ',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle2
                                  .copyWith(color: kgrayColor),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          width: 150,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: List.generate(menus.length, (index) {
                                return GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      activeMenu = index;
                                    });
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        gradient: activeMenu == index
                                            ? LinearGradient(
                                                begin: Alignment.topLeft,
                                                end: Alignment.bottomRight,
                                                colors: <Color>[
                                                  ksecondColor,
                                                  kPrimaryColor,
                                                ],
                                              )
                                            : LinearGradient(
                                                colors: <Color>[
                                                  Color(0xFFF6F8F9),
                                                  Color(0xFFF6F8F9)
                                                ],
                                              )),
                                    margin: EdgeInsets.only(right: 5),
                                    // padding: EdgeInsets.symmetric(
                                    //   vertical: 10,
                                    // ),
                                    child: Center(
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 8, horizontal: 6),
                                        child: Text(
                                          menus[index],
                                          style: activeMenu == index
                                              ? Theme.of(context)
                                                  .textTheme
                                                  .subtitle2
                                                  .copyWith(color: kWhiteColor)
                                              : Theme.of(context)
                                                  .textTheme
                                                  .subtitle2
                                                  .copyWith(color: kgrayColor),
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              }),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: size.height * 0.5,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Light(),
                    SizedBox(
                      height: 25,
                    ),
                    BestValue(
                      title: 'assets/icons/title_best_value.svg',
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    BestValue(
                      title: 'assets/icons/title_plus.svg',
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
