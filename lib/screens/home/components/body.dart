import 'package:flutter/material.dart';
import 'package:flutter_store/constants.dart';
import 'featured_item.dart';
import 'header.dart';
import 'recomended.dart';
import 'title_with_bttn.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSerch(size: size),
          TitleWithMoreButton(
            title: "Recomended",
            onPress: () {},
          ),
          const RecomendsList(),
          TitleWithMoreButton(title: "Featured", onPress: () {}),
          const FeatureItems(),
          const SizedBox(
            height: kDefaultPadding,
          )
        ],
      ),
    );
  }
}
