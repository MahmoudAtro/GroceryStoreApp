import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:modernlogintute/core/utils/app_router.dart';

class CustomSplashButtom extends StatelessWidget {
  const CustomSplashButtom({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).pushReplacement(AppRouter.kLogin);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 24,
          horizontal: 50,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: const Color.fromARGB(255, 112, 91, 222),
        ),
        child: Text(
          "Get Started",
          style: TextStyle(
            color: Colors.white,
            // fontWeight: FontWeight.bold,
            fontSize: width * 0.04,
          ),
        ),
      ),
    );
  }
}
