import 'package:flutter/material.dart';

class CustomCartFooter extends StatelessWidget {
  const CustomCartFooter({super.key, required this.totalprice});

  final String totalprice;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 36.0, vertical: 10.0),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.indigo[200],
              borderRadius: BorderRadius.circular(15),
            ),
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Repeat previous order",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: const Text(
                    "Order now",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: height * 0.05,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                // color: Colors.green,
                color: Colors.blue[900]),
            padding: const EdgeInsets.all(24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Total Price',
                      style: TextStyle(color: Colors.green[200]),
                    ),

                    const SizedBox(height: 8),
                    // total price
                    Text(
                      '\$$totalprice',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),

                // pay now
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.green.shade200),
                    borderRadius: BorderRadius.circular(28),
                  ),
                  padding: const EdgeInsets.all(12),
                  child: const Row(
                    children: [
                      Text(
                        'Pay Now',
                        style: TextStyle(color: Colors.white),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
