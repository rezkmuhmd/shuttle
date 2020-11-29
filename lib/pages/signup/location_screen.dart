import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shuttle_meal_app/pages/home/home_product.dart';
import 'package:shuttle_meal_app/pages/signup/components/appbar.dart';
import 'package:shuttle_meal_app/pages/signup/components/category_list.dart';
import 'package:shuttle_meal_app/pages/signup/components/seach_location.dart';
import 'package:shuttle_meal_app/pages/signup/search.dart';
import 'package:shuttle_meal_app/utils/constants.dart';

class LocationScreen extends StatelessWidget {
  static String locationRouteName = '/routename';
  const LocationScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: buildAppBar(context),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: CategList(),
            ),
            SizedBox(height: 7),
            Row(
              children: [
                SvgPicture.asset(
                  'assets/icons/icn_company.svg',
                  height: 30,
                ),
                SizedBox(width: 10),
                Text('Set your work location',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .copyWith(color: kgrayColor))
              ],
            ),
            SizedBox(height: 7),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: SeachLocation(),
                    height: size.height*0.43,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Color(0xFFC7CCDB))),
                  ),
                  SizedBox(height: 15),
                  GestureDetector(
                    onTap: () {
                      // go to home product screen
                      Navigator.of(context)
                          .pushNamed(HomeProduct.homeProductRouteName);
                    },
                    child: Container(
                      child: Center(
                          child: Text(
                        'Next',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            .copyWith(color: kWhiteColor),
                      )),
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: <Color>[
                            ksecondColor,
                            kPrimaryColor,
                          ],
                        ),
                      ),
                      // child: RaisedButton(
                      //   onPressed: () {},
                      //   textColor: Colors.white,
                      //   child: const Text('Next',
                      //       style: TextStyle(fontWeight: FontWeight.bold)),
                      // ),
                    ),
                  ),
                  SizedBox(height: 15),
                  GestureDetector(
                    onTap: () {
                      // goto seach bar.
                      Navigator.of(context)
                          .pushNamed(SignUpSearch.signUpSearchRoutename);
                    },
                    child: Container(
                      height: 50,
                      child: Center(
                          child: Text(
                        'Search Again',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            .copyWith(color: kaccentColor),
                      )),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: kaccentColor, width: 2),
                      ),
                    ),
                  )
                ],
              ),

              // GFSearchBar(searchList: null, overlaySearchListItemBuilder: null, searchQueryBuilder: null)
            )
          ],
        ),
      ),
    );
  }
}
