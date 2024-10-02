import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomHomeText extends StatelessWidget {
  const CustomHomeText({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Text('Good morning,'),
            ),

            const SizedBox(height: 4),

            // Let's order fresh items for you
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Text(
                "Let's order fresh items for you",
                style: GoogleFonts.notoSerif(
                  fontSize: width*0.07,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
      ],
    );
  }
}