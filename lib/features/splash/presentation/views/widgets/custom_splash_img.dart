import 'package:flutter/material.dart';
import 'package:modernlogintute/core/utils/assets.dart';

class CustomSplashImg extends StatelessWidget {
  const CustomSplashImg({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;
    return Padding(
              padding: EdgeInsets.only(
                left: width * 0.2,
                right: width * 0.2,
                top: height * 0.08,
                bottom: 20,
              ),
              child: Image.asset(
                splashimg,
                width: width * 0.5,
                height: height * 0.3,
              ),
            );
  }
}