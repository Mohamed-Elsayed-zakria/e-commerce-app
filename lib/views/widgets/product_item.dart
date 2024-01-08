import '../../constant/screen_size.dart';
import 'package:flutter/material.dart';
import '../../models/product_model.dart';

class ProductItem extends StatelessWidget {
  final ProductModel product;
  const ProductItem({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    final size = screanSize(context: context);
    return Stack(
      clipBehavior: Clip.none,
      children: [
        SizedBox(
          height: 130,
          width: size.width * .5,
          child: Card(
            elevation: 10,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Text(
                    product.title,
                    maxLines: 1,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        '${product.price}\$',
                        style: const TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.favorite,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: -60,
          right: 14,
          child: SizedBox(
            height: 100,
            width: size.width * .3,
            child: Image.network(
              product.image,
            ),
          ),
        ),
      ],
    );
  }
}
