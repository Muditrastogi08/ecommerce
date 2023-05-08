import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:ecommerce_ui/widgets/categories_widget.dart';
import 'package:ecommerce_ui/widgets/item_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/home_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const HomeAppBar(),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 15),
                    decoration: const BoxDecoration(
                      color: Color(0xffEDECF2),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 5),
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(left: 5),
                                height: 50,
                                width: 300,
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Search here ...'),
                                ),
                              ),
                              const Icon(Icons.camera_alt)
                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          margin: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 10),
                          child: const Text(
                            'Categories',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff4C53A5)),
                          ),
                        ),
                        //catogaries widget
                        const CategoriesWidget(),
                        Container(
                          alignment: Alignment.centerLeft,
                          margin: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 20),
                          child: const Text(
                            'Best Selling',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff4C53A5),
                            ),
                          ),
                        ),
                        const ItemWidget(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        items: const [
          Icon(Icons.home),
          Icon(Icons.home),
          Icon(Icons.home),
        ],
      ),
    );
  }
}
