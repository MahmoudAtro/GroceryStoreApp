import 'package:flutter/material.dart';
import 'package:modernlogintute/core/cartmodel.dart';
import 'package:modernlogintute/core/utils/app_router.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartModel(),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: AppRouter.router,
        
      ),
    );
  }
}
