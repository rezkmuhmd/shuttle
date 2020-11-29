import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shuttle_meal_app/utils/constants.dart';

class SeachLocation extends StatelessWidget {
  const SeachLocation({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String companyaddress = '4th floor on the right';
    String companyreception = 'Saleh Ahmed';
    String number = '+20 343 34 3434';
    String imagemap = 'assets/images/location.jpg';
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Text('Vodafone Intarnational Services',
              style: Theme.of(context)
                  .textTheme
                  .subtitle1
                  .copyWith(color: kBlackColor)),
        ),
        Stack(
          children: [
            Container(
              width: double.infinity,
              height: 100,
              child: Image.asset(
                imagemap,
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
                top: 10,
                left: 100,
                bottom: 20,
                child: SvgPicture.asset(
                  'assets/icons/icn_round_location_pin.svg',
                  color: ksecondColor,
                  width: 40,
                ))
          ],
        ),
        //  Stack(
        //   children: [

        //     Positioned(
        //         top: 10,
        //         left: 100,
        //         bottom: 20,
        //         child: SvgPicture.asset(
        //           'assets/icons/icn_round_location_pin.svg',
        //           color: ksecondColor,
        //           width: 40,
        //         ))
        //   ],
        // )

        Column(
          children: [
            ListTile(
              leading: SvgPicture.asset(
                'assets/icons/icn_details.svg',
                width: 30,
              ),
              title: Text(
                'Company Address',
                style: TextStyle(color: kBlackColor),
              ),
              subtitle: Text(
                companyaddress,
                style: TextStyle(color: kgrayColor.withOpacity(0.5)),
              ),
            ),
            ListTile(
              leading: SvgPicture.asset(
                'assets/icons/icn_user.svg',
                width: 30,
              ),
              title: Text(
                'Company Reception',
                style: TextStyle(color: kBlackColor),
              ),
              subtitle: Text(
                '$companyreception \n$number',
                style: TextStyle(color: kgrayColor.withOpacity(0.5)),
              ),
            )
          ],
        ),
      ],
    );
  }
}
