// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ecommerce_app_level3/pages/shared/appbarcard.dart';
import 'package:ecommerce_app_level3/pages/shared/colors.dart';
import 'package:ecommerce_app_level3/provider/Cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Checkout extends StatelessWidget {
  const Checkout({super.key});

  @override
  Widget build(BuildContext context) {
    final classInstancee = Provider.of<Cart>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: appbarGreen,
        title: Text("Checkout"),
        actions: [ProductAndPrice()],
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            child: SizedBox(
                height: 300,
                child: ListView.builder(
                    padding: const EdgeInsets.all(8),
                    itemCount: classInstancee.selectedProducts.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        child: ListTile(
                          subtitle: Text(
                              "\$${classInstancee.selectedProducts[index].price} - ${classInstancee.selectedProducts[index].location}"),
                          leading: CircleAvatar(
                            backgroundImage: AssetImage(
                                classInstancee.selectedProducts[index].picture),
                          ),
                          title:
                              Text(classInstancee.selectedProducts[index].name),
                          trailing: IconButton(
                              onPressed: () {
                                classInstancee.deletefromcart(
                                    classInstancee.selectedProducts[index]);
                              },
                              icon: Icon(Icons.remove)),
                        ),
                      );
                    })),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(BTNpink),
              padding: MaterialStateProperty.all(EdgeInsets.all(12)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8))),
            ),
            child: Text(
              "Pay \$${classInstancee.price} Now",
              style: TextStyle(fontSize: 19),
            ),
          ),
        ],
      ),
    );
  }
}
