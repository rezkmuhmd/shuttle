import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shuttle_meal_app/utils/constants.dart';

AppBar buildAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: kWhiteColor,
      leading: IconButton(
        icon: SvgPicture.asset('assets/icons/icn_back.svg' , color: ksecondColor,),
        onPressed: () {},
      ),
      centerTitle: true,
      title: Text('Sign up',
          style: Theme.of(context)
              .textTheme
              .headline6
              .copyWith(fontWeight: FontWeight.bold , color: ksecondColor)),
    );
  }