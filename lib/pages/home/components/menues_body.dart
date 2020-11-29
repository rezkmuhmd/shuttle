import 'package:flutter/material.dart';
import 'package:shuttle_meal_app/utils/constants.dart';
//subtitle text of card
class UnderNameCard extends StatelessWidget {
  final String name;
  const UnderNameCard({
    Key key,
    this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: Theme.of(context).textTheme.subtitle2,
    );
  }
}
// name of card(custom widget)
class NameCard extends StatelessWidget {
  final String name;
  const NameCard({
    Key key,
    this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: Theme.of(context).textTheme.subtitle1,
    );
  }
}
// price before discount
class LastPrice extends StatelessWidget {
  final String price;
  const LastPrice({
    Key key,
    this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Text(' EGP $price ',
            style: TextStyle(
              fontSize: 10,
              color: kgrayColor.withOpacity(0.5),
            )),
        Container(
          margin: EdgeInsets.symmetric(vertical: 5),
          height: 2,
          width: 50,
          decoration: BoxDecoration(
            color: kgrayColor.withOpacity(0.5),
          ),
        ),
      ],
    );
  }
}
// price after discount
class CurrentPrice extends StatelessWidget {
  final String price;
  const CurrentPrice({
    Key key,
    this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'EGP $price',
      style: TextStyle(
          fontSize: 12, color: kBlackColor, fontWeight: FontWeight.bold),
    );
  }
}
 // image of food
class CardImage extends StatelessWidget {
  final String image;
  CardImage({
    Key key,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      height: 180,
      width: 150,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          image,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}