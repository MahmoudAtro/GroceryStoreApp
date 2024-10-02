import 'package:flutter/material.dart';
import 'package:modernlogintute/core/utils/assets.dart';
import 'package:modernlogintute/features/home/presentation/views/widgets/custom_home_categorie_item.dart';

class CustomHomeCategorieList extends StatelessWidget {
  const CustomHomeCategorieList({super.key});

  final List catrgorie = const [
    // [ itemName, itemPrice, imagePath, color ]
    ["Vegetables", "4.00", avocadopath, Colors.green],
    ["Fruits", "2.50", bananapath, Colors.yellow],
    ["Meat", "12.80", chickenpath, Colors.brown],
    ["Water", "1.00", waterpath, Colors.blue],
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    return SizedBox(
      height: height*0.22,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
          itemCount: catrgorie.length,
          itemBuilder: (context, index) {
            return CustomHomeCategorieItem(
              imagePath: catrgorie[index][2],
              categorieName: catrgorie[index][0],
              color: catrgorie[index][3],
            );
          }),
    );
  }
}
