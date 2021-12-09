import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import 'icon_card.dart';

class ImageAndIconCard extends StatelessWidget {
  const ImageAndIconCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding * 3),
      child: SizedBox(
        height: size.height * 0.8,
        child: Row(
          children: <Widget>[
            Expanded(
                child: Column(
              children: [
                SizedBox(
                  height: size.height * 0.05,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                      padding: const EdgeInsets.symmetric(
                          horizontal: kDefaultPadding),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: SvgPicture.asset("assets/icons/back_arrow.svg")),
                ),
                const Spacer(),
                const IconCard(
                  iconUrl: "assets/icons/sun.svg",
                ),
                const IconCard(
                  iconUrl: "assets/icons/icon_2.svg",
                ),
                const IconCard(
                  iconUrl: "assets/icons/icon_3.svg",
                ),
                const IconCard(
                  iconUrl: "assets/icons/icon_4.svg",
                ),
              ],
            )),
            Container(
              height: size.height * 0.8,
              width: size.width * 0.75,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: kPrimaryColor.withOpacity(0.30),
                        offset: const Offset(0, 10),
                        blurRadius: 60)
                  ],
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(63),
                      bottomLeft: Radius.circular(63)),
                  image: const DecorationImage(
                      alignment: Alignment.centerLeft,
                      image: AssetImage("assets/images/img.png"),
                      fit: BoxFit.cover)),
            )
          ],
        ),
      ),
    );
  }
}
