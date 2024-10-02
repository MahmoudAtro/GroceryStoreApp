import 'package:flutter/material.dart';
import 'package:modernlogintute/features/splash/presentation/views/widgets/custom_splash_buttom.dart';
import 'package:modernlogintute/features/splash/presentation/views/widgets/custom_splash_img.dart';
import 'package:modernlogintute/features/splash/presentation/views/widgets/custom_splash_text.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            // big logo
            CustomSplashImg(),

            // we deliver groceries at your doorstep
            CustomSplashText(),

            SizedBox(height: 24),

            Spacer(),

            // get started button
            CustomSplashButtom(),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
