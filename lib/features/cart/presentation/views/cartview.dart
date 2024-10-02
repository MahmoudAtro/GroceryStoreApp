import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modernlogintute/core/cartmodel.dart';
import 'package:modernlogintute/features/cart/presentation/views/widgets/custom_cart_footer.dart';
import 'package:modernlogintute/features/cart/presentation/views/widgets/custom_cart_listview.dart';
import 'package:provider/provider.dart';

class CartPageView extends StatelessWidget {
  const CartPageView({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.grey[800],
          ),
        ),
        body: Consumer<CartModel>(
          builder: (context, value, child) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Let's order fresh items for you
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Text(
                    "My Cart",
                    style: GoogleFonts.notoSerif(
                      fontSize: width * 0.065,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                // list view of cart
                CustomCartListview(products: value.cartItems),

                // total amount + pay now

                const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 70,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(child: Divider()),
                      Text("  OR  "),
                      Expanded(child: Divider()),
                    ],
                  ),
                ),

                // Cart Footer
                CustomCartFooter(
                  totalprice: value.calculateTotal(),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
