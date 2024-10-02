import 'package:flutter/material.dart';
import 'package:modernlogintute/features/home/presentation/views/widgets/custom_home_floataction.dart';
import 'package:modernlogintute/features/home/presentation/views/widgets/home_view_body.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: HomeViewBody(),
        floatingActionButton: CustomHomeFloataction(),
      ),
    );
  }
}
