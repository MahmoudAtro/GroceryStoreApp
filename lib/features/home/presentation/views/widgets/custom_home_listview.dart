import 'package:flutter/material.dart';
import 'package:modernlogintute/core/cartmodel.dart';
import 'package:modernlogintute/core/components/grocery_item_tile.dart';
import 'package:provider/provider.dart';

class CustomHomeListview extends StatelessWidget {
  const CustomHomeListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CartModel>(
      builder: (context, value, child) {
        final width = MediaQuery.sizeOf(context).width;
        return GridView.builder(
          padding: const EdgeInsets.all(12),
          physics: const NeverScrollableScrollPhysics(),
          itemCount: value.shopItems.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: width > 600 ? 3 : 2,
            childAspectRatio: width > 600 ? 1 / 1.3 : 1 / 1.2,
          ),
          itemBuilder: (context, index) {
            return GroceryItemTile(
              itemName: value.shopItems[index][0],
              itemPrice: value.shopItems[index][1],
              imagePath: value.shopItems[index][2],
              color: value.shopItems[index][3],
              onPressed: () => Provider.of<CartModel>(context, listen: false)
                  .addItemToCart(index),
            );
          },
        );
      },
    );
  }
}
