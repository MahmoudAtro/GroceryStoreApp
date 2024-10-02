import 'package:flutter/material.dart';
import 'package:modernlogintute/core/cartmodel.dart';
import 'package:provider/provider.dart';

class CustomCartListItem extends StatelessWidget {
  const CustomCartListItem(
      {super.key, required this.product, required this.index});

  final List product;
  final int index;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          // color: Colors.grey[200],
          borderRadius: BorderRadius.circular(8),
        ),
        child: ListTile(
          leading: Container(
            padding: const EdgeInsets.all(5),
            height: height * 0.25,
            width: width * 0.25,
            decoration: BoxDecoration(
              color: product[3][100],
              shape: BoxShape.circle,
            ),
            child: Image.asset(
              fit: BoxFit.contain,
              product[2],
              height: height * 0.09,
              width: width * 0.09,
            ),
          ),
          title: Text(
            product[0],
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                // ignore: prefer_interpolation_to_compose_strings
                '\$' + product[1],
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(" - ${product[4]} items"),
            ],
          ),
          trailing: IconButton(
            icon: const Icon(Icons.cancel),
            onPressed: () => Provider.of<CartModel>(context, listen: false)
                .removeItemFromCart(index),
          ),
        ),
      ),
    );
  }
}
