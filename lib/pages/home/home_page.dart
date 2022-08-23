import 'package:ecommerce_app/constants/img_string.dart';
import 'package:ecommerce_app/pages/cart/data/cart_state.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/components/custom_appbar.dart';
import 'package:ecommerce_app/components/badge_button.dart';
import 'package:ecommerce_app/pages/cart/cart_page.dart';
import 'package:ecommerce_app/pages/home/components/hello_panel.dart';
import 'package:ecommerce_app/pages/home/components/sale_off_panel.dart';
import 'package:ecommerce_app/pages/home/components/categories_pannel.dart';
import 'package:ecommerce_app/pages/home/components/product_panel.dart';
import 'package:ecommerce_app/pages/production/production_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static const routeName = "homePage";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _reload() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.home,
            size: 32,
          ),
        ),
        action: [
          BadgeButton(
            badgeCount: cartState.totalItems,
            onPressedBadgeButton: () {
              Navigator.of(context)
                  .pushNamed(CartPage.routeName)
                  .then((value) => _reload());
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 10),
              const HelloPanel(userName: 'Rocky'),
              const SizedBox(height: 25),
              SaleOffPanel(
                saleOffImage: ImgString.appleWatchImg,
                onPressed: () {},
              ),
              const SizedBox(height: 25),
              CategoriesPanel(
                onPressedSeeAll: () {},
                onPressedIcon: () {},
              ),
              const SizedBox(height: 25),
              ProductPannel(
                onPressed: (product) {
                  Navigator.of(context)
                      .pushNamed(
                        ProductionPage.routeName,
                        arguments: product,
                      )
                      .then((value) => _reload());
                },
                onPressedFavoriteButton: () {},
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}