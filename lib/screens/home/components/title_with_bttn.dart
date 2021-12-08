import 'package:flutter/material.dart';

import '../../../constants.dart';

class TitleWithMoreButton extends StatelessWidget {
  const TitleWithMoreButton({
    Key? key,
    required this.title,
    required this.onPress,
  }) : super(key: key);

  final String title;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: <Widget>[
          TitleWithCustomUnderline(
            textName: title,
          ),
          const Spacer(),
          ElevatedButton(
              style: TextButton.styleFrom(
                  backgroundColor: kPrimaryColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
              onPressed: onPress(),
              child: const Text(
                "More",
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
    );
  }
}

class TitleWithCustomUnderline extends StatelessWidget {
  const TitleWithCustomUnderline({key, required this.textName})
      : super(key: key);

  final String textName;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding / 4),
            child: Text(
              textName,
              style: const TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold, color: kTextColor),
            ),
          ),
          Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                margin: const EdgeInsets.only(right: kDefaultPadding / 4),
                height: 7,
                color: kPrimaryColor.withOpacity(0.2),
              ))
        ],
      ),
    );
  }
}
