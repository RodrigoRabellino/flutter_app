import 'dart:ffi';

import 'package:flutter/material.dart';

import '../../../constants.dart';

class RecomendPlantCard extends StatelessWidget {
  const RecomendPlantCard({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.country,
    required this.price,
    required this.onPress,
  }) : super(key: key);

  final String imageUrl, title, country;
  final int price;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding * 2.5),
      width: size.width * 0.4,
      child: itemCard(context),
      // child: Column(
      //   children: [
      //     Image.asset(imageUrl),
      //     GestureDetector(
      //       onTap: () => onPress,
      //       child: Container(
      //         padding: const EdgeInsets.all(kDefaultPadding / 2),
      //         decoration: BoxDecoration(
      //             color: Colors.white,
      //             borderRadius: const BorderRadius.only(
      //                 bottomLeft: Radius.circular(10),
      //                 bottomRight: Radius.circular(10)),
      //             boxShadow: [
      //               BoxShadow(
      //                 offset: const Offset(0, 10),
      //                 color: kPrimaryColor.withOpacity(0.23),
      //                 blurRadius: 50,
      //               )
      //             ]),
      //         child: Row(
      //           children: <Widget>[
      //             RichText(
      //                 text: TextSpan(children: [
      //               TextSpan(
      //                   text: "$title\n".toUpperCase(),
      //                   style: Theme.of(context).textTheme.button),
      //               TextSpan(
      //                   text: country,
      //                   style: TextStyle(color: kPrimaryColor.withOpacity(0.5)))
      //             ])),
      //             const Spacer(),
      //             Text(
      //               "\$$price",
      //               style: Theme.of(context)
      //                   .textTheme
      //                   .button!
      //                   .copyWith(color: kPrimaryColor),
      //             )
      //           ],
      //         ),
      //       ),
      //     )
      //   ],
      // ),
    );
  }

  Card itemCard(BuildContext context) {
    return Card(
      shadowColor: kPrimaryColor.withOpacity(0.75),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
      elevation: 5,
      child: InkWell(
        splashColor: kPrimaryColor.withOpacity(0.23),
        onTap: onPress,
        child: Column(
          children: [
            Image.asset(
              imageUrl,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: kDefaultPadding * 0.5,
                right: kDefaultPadding * 0.6,
                left: kDefaultPadding * 0.6,
                bottom: kDefaultPadding * 0.5,
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: "$title\n".toUpperCase(),
                        style: Theme.of(context).textTheme.button),
                    TextSpan(
                        text: country,
                        style:
                            TextStyle(color: kPrimaryColor.withOpacity(0.50)))
                  ])),
                  const Spacer(),
                  Text(
                    "\$$price",
                    style: Theme.of(context)
                        .textTheme
                        .button!
                        .copyWith(color: kPrimaryColor),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
