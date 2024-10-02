import 'package:flutter/material.dart';
import 'package:modernlogintute/core/components/square_tile.dart';

class CustomLoginWith extends StatelessWidget {
  const CustomLoginWith({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    return
        // google + apple sign in buttons
        Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // google button
        const SquareTile(imagePath: 'assets/images/google.png'),

        SizedBox(width: width * 0.04),

        // apple button
        const SquareTile(imagePath: 'assets/images/apple.png')
      ],
    );
  }
}
