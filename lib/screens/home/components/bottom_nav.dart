import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding * 2),
      height: 70,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            offset: const Offset(0, -7),
            blurRadius: 30,
            color: kPrimaryColor.withOpacity(0.23))
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/icons/flower.svg")),
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/icons/heart-icon.svg")),
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/icons/user-icon.svg")),
        ],
      ),
    );
  }
}
