import '../services/get_product_service.dart';
import 'package:flutter/material.dart';
import '../models/product_model.dart';
import 'widgets/product_item.dart';
import '../constant/colors.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.kSurfaceColor,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_cart_outlined,
                size: 30,
              ),
            ),
          )
        ],
        title: const Text('Store app'),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: GetAllProduct.getAllProduct(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasData) {
            List<ProductModel> products = snapshot.data!;
            return Padding(
              padding:
                  const EdgeInsets.only(top: 80, right: 8, left: 8, bottom: 8),
              child: GridView.builder(
                clipBehavior: Clip.none,
                itemCount: products.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 85,
                  childAspectRatio: 1.5,
                  crossAxisCount: 2,
                  crossAxisSpacing: 4,
                ),
                itemBuilder: (context, index) => ProductItem(
                  product: products[index],
                ),
              ),
            );
          } else {
            return const Center(
              child: Text("Error"),
            );
          }
        },
      ),
    );
  }
}
