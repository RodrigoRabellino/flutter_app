import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../constants.dart';

class IconCard extends StatelessWidget {
  const IconCard({
    Key? key,
    required this.iconUrl,
  }) : super(key: key);

  final String iconUrl;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.03),
      padding: const EdgeInsets.all(kDefaultPadding / 2),
      height: 62,
      width: 62,
      decoration: BoxDecoration(
          color: kBackgroundColor,
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 10),
                color: kPrimaryColor.withOpacity(0.23),
                blurRadius: 60),
            const BoxShadow(
                offset: Offset(-15, -15), color: Colors.white, blurRadius: 20),
          ],
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      child: SvgPicture.asset(iconUrl),
    );
  }
}
