import 'package:flutter/material.dart';
import 'package:shuttle_meal_app/pages/home/home_product.dart';
import 'package:shuttle_meal_app/pages/signup/components/cat_item.dart';

class CategList extends StatelessWidget {
  const CategList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CatItem(
          isActive: true,
          title: 'Location',
          press: () {},
        ),
        SizedBox(width: 10),
        CatItem(
          title: 'Account',
          press: () {},
        ),
        SizedBox(width: 10),
        CatItem(
          title: 'Verify',
          press: () {},
        ),
      ],
    );
  }
}
