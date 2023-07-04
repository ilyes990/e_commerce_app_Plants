// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_app_level3/pages/shared/colors.dart';
import 'package:ecommerce_app_level3/provider/Cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../chekout.dart';

class ProductAndPrice extends StatelessWidget {
  const ProductAndPrice({super.key});

  @override
  Widget build(BuildContext context) {
    final classInstancee = Provider.of<Cart>(context);

    return Row(
      children: [
        Stack(
          children: [
            Positioned(
              bottom: 25,
              child: Container(
                  padding: EdgeInsets.all(5),
                  decoration:
                      BoxDecoration(color: BTNpink, shape: BoxShape.circle),
                  child: Text("${classInstancee.selectedProducts.length}")),
            ),
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => (Checkout())));
                },
                icon: Icon(Icons.add_shopping_cart)),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(right: 11.0),
          child: Text(
            "\$ ${classInstancee.price}",
            style: TextStyle(fontSize: 18),
          ),
        ),
      ],
    );
  }
}
