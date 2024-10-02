import 'package:flutter/material.dart';

class CustomHomeCategorieItem extends StatelessWidget {
  const CustomHomeCategorieItem(
      {super.key,
      required this.imagePath,
      required this.categorieName,
      required this.color});

  final String imagePath;
  final String categorieName;
  final color;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        padding: const EdgeInsets.only(
          top: 5,
          bottom: 5,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: color[100],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // item image
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Image.asset(
                imagePath,
                height: width * 0.1,
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Text(
                categorieName,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
