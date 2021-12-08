import 'package:flutter/material.dart';
import 'package:flutter_store/constants.dart';
import 'package:flutter_store/screens/home/components/body.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'bottom_nav.dart';

class HomeSreen extends StatelessWidget {
  const HomeSreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(),
        body: const Body(),
        bottomNavigationBar: BottomNavBar());
  }

  AppBar buildAppBar() {
    return AppBar(
        backgroundColor: kPrimaryColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset("assets/icons/menu.svg"),
        ));
  }
}
