// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ecommerce_app_level3/pages/home.dart';
import 'package:ecommerce_app_level3/pages/shared/appbarcard.dart';
import 'package:flutter/material.dart';

import 'shared/colors.dart';

// ignore: must_be_immutable
class Details extends StatefulWidget {
  Plants product;
  Details({super.key, required this.product});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  // const Details({super.key});
  bool isShowMore = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details"),
        backgroundColor: appbarGreen,
        actions: [ProductAndPrice()],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Image.asset(widget.product.picture),
              SizedBox(
                height: 11,
              ),
              Text(
                "\$ ${widget.product.price}",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 11,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 249, 126, 155),
                        borderRadius: BorderRadius.circular(5)),
                    child: Text(
                      "New",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        size: 26,
                        color: Color.fromARGB(255, 255, 204, 62),
                      ),
                      Icon(
                        Icons.star,
                        size: 26,
                        color: Color.fromARGB(255, 255, 204, 62),
                      ),
                      Icon(
                        Icons.star,
                        size: 26,
                        color: Color.fromARGB(255, 255, 204, 62),
                      ),
                      Icon(
                        Icons.star,
                        size: 26,
                        color: Color.fromARGB(255, 255, 204, 62),
                      ),
                      Icon(
                        Icons.star,
                        size: 26,
                        color: Color.fromARGB(255, 255, 204, 62),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 66,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.edit_location,
                        size: 26,
                        color: Color.fromARGB(168, 3, 65, 27),
                        // color: Color.fromARGB(255, 186, 30, 30),
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text(
                        widget.product.location,
                        style: TextStyle(fontSize: 19),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 11,
              ),
              SizedBox(
                width: double.infinity,
                child: Text(
                  'Details: ',
                  style: TextStyle(fontSize: 22),
                  textAlign: TextAlign.start,
                ),
              ),
              SizedBox(
                height: 22,
              ),
              Text(
                "While it's easier than ever to buy live plants online, sometimes, despite our best intentions, those live plants become, well, dead plants. Artificial plants — fake plants, silk plants, faux foliage, or whatever you want to call them — offer a solution. They'll never outgrow their pots, the leaves will never droop and turn yellow, and there's no need to worry about watering or fertilizing. They’re also pet-safe and child-safe.",
                style: TextStyle(fontSize: 18),
                maxLines: isShowMore ? 4 : null,
                overflow: TextOverflow.fade,
              ),
              SizedBox(
                height: 22,
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    isShowMore = !isShowMore;
                  });
                },
                child: Text(
                  isShowMore ? "Show more" : "Show less",
                  style: TextStyle(fontSize: 17),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
