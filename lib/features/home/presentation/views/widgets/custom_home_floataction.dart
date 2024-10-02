import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:modernlogintute/core/utils/app_router.dart';

class CustomHomeFloataction extends StatelessWidget {
  const CustomHomeFloataction({super.key});

  @override
  Widget build(BuildContext context) {
    return  FloatingActionButton(
          backgroundColor: Colors.grey[900],
          onPressed: () {
            GoRouter.of(context).push(AppRouter.kCartView);
          },
          child: const Icon(Icons.shopping_bag , color: Colors.deepPurple,),
        );
        
  }
}