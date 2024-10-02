import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Function()? onTap;

  const MyButton({super.key, required this.onTap, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(width*0.05),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: width*0.035,
            ),
          ),
        ),
      ),
    );
  }
}
