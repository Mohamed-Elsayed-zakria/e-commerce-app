import 'package:e_commerce/views/home_view.dart';
import 'package:flutter/material.dart';
import 'constant/colors.dart';
void main() {
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          background: AppColors.kSurfaceColor,
          seedColor: AppColors.kPrimaryColor,
          surfaceTint: AppColors.kSurfaceColor,
        ),
        useMaterial3: true,
      ),
      home: const HomeView(),
    );
  }
}
