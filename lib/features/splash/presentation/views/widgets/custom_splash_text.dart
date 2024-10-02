import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomSplashText extends StatelessWidget {
  const CustomSplashText({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(28.0),
          child: Text(
            'We deliver groceries at your doorstep',
            textAlign: TextAlign.center,
            style: GoogleFonts.notoSerif(
              fontSize: width * 0.06,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        // groceree gives you fresh vegetables and fruits
        Text(
          'Groceer gives you fresh vegetables and fruits order fresh items from groceer',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: width * 0.036,
            fontWeight: FontWeight.bold,
            color: Colors.grey[800],
          ),
        ),
      ],
    );
  }
}
