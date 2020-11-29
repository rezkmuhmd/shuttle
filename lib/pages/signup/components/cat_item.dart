import 'package:flutter/material.dart';
import 'package:shuttle_meal_app/utils/constants.dart';

class CatItem extends StatefulWidget {
  final String title;
  final bool isActive;
  final Function press;
  const CatItem({Key key, this.title, this.isActive = false, this.press})
      : super(key: key);

  @override
  _CatItemState createState() => _CatItemState();
}

class _CatItemState extends State<CatItem> {
  /// if i want gesture on i will use set state(){} function and convert sts widget to stf widget.
  ///
  ///

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.press,
      // child: Padding(
      //   padding: const EdgeInsets.symmetric(horizontal: 5),
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.start,
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: [
      //       Text(title,
      //           style: isActive
      //               ? Theme.of(context)
      //                   .textTheme
      //                   .bodyText1
      //                   .copyWith(color: ksecondColor)
      //               : Theme.of(context)
      //                   .textTheme
      //                   .bodyText1
      //                   .copyWith(color: kgrayColor.withOpacity(0.5))),
      //       Container(
      //         margin: EdgeInsets.symmetric(vertical: 5),
      //         height: 3,
      //         width: 90,
      //         decoration: BoxDecoration(
      //           color: isActive ? ksecondColor : kgrayColor.withOpacity(0.5),
      //           borderRadius: BorderRadius.circular(10),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),

      /// another way ........
      ///
      ///
      child: Container(
        width: 80,
        padding: EdgeInsets.symmetric(vertical: 5),
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(
                    color: widget.isActive
                        ? ksecondColor
                        : kgrayColor.withOpacity(0.5),
                    width: 3))),
        child: Text(widget.title,
            style: widget.isActive
                ? Theme.of(context)
                    .textTheme
                    .bodyText1
                    .copyWith(color: ksecondColor, fontSize: 16)
                : Theme.of(context).textTheme.bodyText1.copyWith(
                    color: kgrayColor.withOpacity(0.5), fontSize: 16)),
      ),
    );
  }
}
