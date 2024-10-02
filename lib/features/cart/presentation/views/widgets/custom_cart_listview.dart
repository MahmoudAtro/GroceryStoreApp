import 'package:flutter/material.dart';
import 'package:modernlogintute/features/cart/presentation/views/widgets/custom_cart_list_item.dart';

class CustomCartListview extends StatelessWidget {
  const CustomCartListview({super.key, required this.products});

  final List products;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: products.length,
        padding: const EdgeInsets.all(12),
        itemBuilder: (context, index) {
          return CustomCartListItem(
            product: products[index],
            index: index,
          );
        },
      ),
    );
  }
}
