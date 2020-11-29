import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:shuttle_meal_app/utils/constants.dart';

class SearchBox extends StatefulWidget {
  SearchBox({Key key}) : super(key: key);

  @override
  _SearchBoxState createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {
  // List<String> list = [
  //   'Vodafone Intarnational Services',
  //   'Vodafone Intarnational Services',
  //   'Vodafone Intarnational Services'
  // ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 70,
          margin: EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: ksecondColor),
          ),
          // I tried to use diffrent ways to make search bar and view listview  but don’t success
          
          child: TextField(
            onSubmitted: (value) {},
            keyboardType: TextInputType.text,
            textCapitalization: TextCapitalization.sentences,
            onChanged: (value) {},
            decoration: InputDecoration(
              border: InputBorder.none,
              suffixIcon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset('assets/icons/icn_search.svg'),
              ),
              labelText: 'work address',
            ),
          ),
        ),
        ListView.builder(
          itemBuilder: (context, index) {
            return ListTile(
              leading: SvgPicture.asset('assetsicons/icn_location_pin.svg'),
              title: Text('Vodafone Intarnational Services',
                  style: TextStyle(color: kaccentColor)),
              subtitle: Text(
                'MaadiTechnology,Etisalat Club ,Ezbat Fat.....',
                style: TextStyle(
                  color: kgrayColor,
                ),
              ),
            );
          },
        )
      ],
    );
    //   child:
    //  GFSearchBar(
    //   searchList: list,
    //   overlaySearchListItemBuilder: (item) {
    //     return ListView.builder(
    //       itemBuilder: (context, index) => ListTile(
    //         leading: SvgPicture.asset('assetsicons/icn_location_pin.svg'),
    //         title: Text(item, style: TextStyle(color: kaccentColor)),
    //         subtitle: Text(
    //           'MaadiTechnology,Etisalat Club ,Ezbat Fat.....',
    //           style: TextStyle(
    //             color: kgrayColor,
    //           ),
    //         ),
    //       ),
    //       itemCount: 6,
    //     );
    //   },
    //   overlaySearchListHeight: 900,
    //   searchQueryBuilder: (query, list) {
    //     return list
    //         .where((item) => item.toLowerCase().contains(query.toLowerCase()))
    //         .toList();
    //   },
    //   searchBoxInputDecoration: InputDecoration(
    //     // focusedBorder: OutlineInputBorder(
    //     //     borderSide: BorderSide(color: ksecondColor),
    //     //     borderRadius: BorderRadius.circular(10)),
    //     border: InputBorder.none,
    // labelText: 'work address',
    //     suffixIcon: Padding(
    //       padding: const EdgeInsets.all(8.0),
    //       child: SvgPicture.asset('assets/icons/icn_search.svg'),
    //     ),
    //   ),
    // );
    // );
    //  TextFormField(
    //   keyboardType: TextInputType.text,
    //   textCapitalization: TextCapitalization.sentences,
    //   onFieldSubmitted: (value) {
    //     // goto location screen
    //   },
    //   decoration: InputDecoration(
    //     focusedBorder: OutlineInputBorder(
    //         borderSide: BorderSide(color: ksecondColor),
    //         borderRadius: BorderRadius.circular(10)),
    //     border: InputBorder.none,
    //     labelText: 'work address',
    //     suffixIcon: Padding(
    //       padding: const EdgeInsets.all(8.0),
    //       child: SvgPicture.asset('assets/icons/icn_search.svg'),
    //     ),
    //   ),
    // ),
  }
}
