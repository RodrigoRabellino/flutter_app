import 'package:flutter/material.dart';
import 'package:flutter_store/screens/details/details_screen.dart';
import 'item_card.dart';

class RecomendsList extends StatelessWidget {
  const RecomendsList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecomendPlantCard(
            imageUrl: "assets/images/image_1.png",
            title: "Ariel",
            country: "Italy",
            price: 440,
            onPress: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DetailsScreen(),
                  ));
            },
          ),
          RecomendPlantCard(
            imageUrl: "assets/images/image_2.png",
            title: "Tannia",
            country: "Russia",
            price: 220,
            onPress: () => {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DetailsScreen(),
                  ))
            },
          ),
          RecomendPlantCard(
            imageUrl: "assets/images/image_3.png",
            title: "Chios",
            country: "Spain",
            price: 410,
            onPress: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DetailsScreen(),
                  ));
            },
          ),
        ],
      ),
    );
  }
}
