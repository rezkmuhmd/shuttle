import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shuttle_meal_app/pages/signup/components/appbar.dart';
import 'package:shuttle_meal_app/pages/signup/components/category_list.dart';
import 'package:shuttle_meal_app/pages/signup/components/searchbox.dart';
import 'package:shuttle_meal_app/utils/constants.dart';

class SignUpSearch extends StatelessWidget {
  static String signUpSearchRoutename = 'signup';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: CategList(), // tab bar  (location , account, verify)
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
            SearchBox(),

            // GFSearchBar(searchList: null, overlaySearchListItemBuilder: null, searchQueryBuilder: null)
          ],
        ),
      ),
    );
  }
}
