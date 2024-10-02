import 'package:flutter/material.dart';
import 'package:modernlogintute/features/home/presentation/views/widgets/custom_home_appbar.dart';
import 'package:modernlogintute/features/home/presentation/views/widgets/custom_home_categorie_list.dart';
import 'package:modernlogintute/features/home/presentation/views/widgets/custom_home_listview.dart';
import 'package:modernlogintute/features/home/presentation/views/widgets/custom_home_text.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final width =  MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // custom app bar
              const CustomHomeAppbar(),

              SizedBox(height: height * 0.1),

              // good morning bro // Custom Home Text
              const CustomHomeText(),

              SizedBox(height: height * 0.05),

              // custom Home Categorie
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  "Caregories",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const CustomHomeCategorieList(),

              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: Divider(),
              ),

              SizedBox(height: height * 0.04),

              // categories -> horizontal listview
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Text(
                  "Fresh Items",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: width * 0.04,
                  ),
                ),
              ),
            ],
          ),
        ),
        // recent orders -> show last 3 // Custom Home ListView
        const SliverFillRemaining(
          child: CustomHomeListview(),
        )
      ],
    );
  }
}
