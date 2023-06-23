// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:ecommerce_app_level3/pages/details_screen.dart';
import 'package:ecommerce_app_level3/pages/shared/colors.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class Plants {
  String price;
  String location;
  String picture;
  Plants({
    required this.price,
    required this.picture,
    this.location = "main branch",
  });
}

class _HomeState extends State<Home> {
  List allPlants = [
    Plants(
        price: "\$12.99",
        picture: "assets/plant1.jpeg",
        location: "Ilyes Shop"),
    Plants(price: "\$12.99", picture: "assets/plant2.jpeg"),
    Plants(price: "\$19.99", picture: "assets/plant3.jpeg"),
    Plants(price: "\$22.99", picture: "assets/plant4.jpeg"),
    Plants(price: "\$33.99", picture: "assets/plant5.jpg"),
    Plants(price: "\$23.99", picture: "assets/plant6.jpg"),
  ];

  List selectedProducts = [
    Plants(price: "\$12.99", picture: "assets/plant2.jpeg"),
    Plants(price: "\$22.99", picture: "assets/plant4.jpeg"),
    Plants(price: "\$23.99", picture: "assets/plant6.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 15),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 2 / 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 22),
            itemCount: allPlants.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              (Details(product: allPlants[index]))));
                },
                child: GridTile(
                  child: Stack(
                    children: [
                      Positioned(
                        top: 10,
                        bottom: 10,
                        right: 0,
                        left: 0,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(33),
                            child: Image.asset("${allPlants[index].picture}")),
                      ),
                    ],
                  ),
                  footer: GridTileBar(
// backgroundColor: Color.fromARGB(66, 73, 127, 110),
                    trailing: IconButton(
                        color: Color.fromARGB(255, 62, 94, 70),
                        onPressed: () {},
                        icon: Icon(Icons.add)),

                    leading: Text("${allPlants[index].price}"),
                    title: Text(
                      "",
                    ),
                  ),
                ),
              );
            }),
      ),
      drawer: Drawer(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  UserAccountsDrawerHeader(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/darktrees.jpeg"),
                          fit: BoxFit.cover),
                    ),
                    accountName: Text("Ilyes Sissaoui",
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                        )),
                    accountEmail: Text("ilyes.sissaoui@gmail.com"),
                    currentAccountPicture: CircleAvatar(
                        radius: 55,
                        backgroundImage:
                            AssetImage("assets/ilyes&assenath.jpg")),
                  ),
                  ListTile(
                      title: Text("Home"),
                      leading: Icon(Icons.home),
                      onTap: () {}),
                  ListTile(
                      title: Text("My products"),
                      leading: Icon(Icons.add_shopping_cart),
                      onTap: () {}),
                  ListTile(
                      title: Text("About"),
                      leading: Icon(Icons.help_center),
                      onTap: () {}),
                  ListTile(
                      title: Text("Logout"),
                      leading: Icon(Icons.exit_to_app),
                      onTap: () {}),
                ],
              ),
              Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: Text(
                    'Developed by Ilyes Sissaoui © 2023',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  )),
            ]),
      ),
      appBar: AppBar(
        actions: [
          Row(
            children: [
              Stack(
                children: [
                  Positioned(
                    bottom: 25,
                    child: Container(
                        child: Text("0"),
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: BTNpink, shape: BoxShape.circle)),
                  ),
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.add_shopping_cart)),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 11.0),
                child: Text(
                  "\$13",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ],
        title: Text("Home"),
        backgroundColor: appbarGreen,
      ),
    );
  }
}
