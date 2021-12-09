import 'package:flutter/material.dart';
import 'package:flutter_store/constants.dart';
import 'image_icon_card.dart';
import 'title_price.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: <Widget>[
          const ImageAndIconCard(),
          const TitleAndPrice(
            price: 440,
            country: "Russia",
            title: "Angelica",
          ),
          const SizedBox(
            height: kDefaultPadding,
          ),
          Row(
            children: [
              SizedBox(
                width: size.width / 2,
                height: 80,
                child: ElevatedButton(
                  style: TextButton.styleFrom(
                      backgroundColor: kPrimaryColor,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20)))),
                  child: const Text(
                    "Buy Now",
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
              SizedBox(
                width: size.width / 2,
                height: 80,
                child: TextButton(
                  style: TextButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.only(topLeft: Radius.circular(20)))),
                  child: const Text(
                    "Description",
                    style: TextStyle(fontSize: 17, color: kPrimaryColor),
                  ),
                  onPressed: () {},
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
