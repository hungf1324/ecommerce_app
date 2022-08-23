import 'package:ecommerce_app/pages/cart/components/cart_list.dart';
import 'package:ecommerce_app/pages/cart/components/checkout_panel.dart';
import 'package:ecommerce_app/components/custom_appbar.dart';
import 'package:ecommerce_app/pages/cart/data/cart_state.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  static const routeName = "cartPage";

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        appBar: CustomAppBar(title: 'My cart'),
        bottomNavigationBar: CheckOutPanel(
          onPressed: () {},
        ),
        body: CartList(
          onPressedRemoveButton: (index) {
            cartState.removeItem(index);
            setState(() {});
          },
          onPressedAddButton: (index) {
            cartState.addItem(index);
            setState(() {});
          },
        ),
      ),
    );
  }
}
