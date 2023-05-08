import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      physics: const NeverScrollableScrollPhysics(),
      childAspectRatio: 0.68,
      shrinkWrap: true,
      children: [
        for (int i = 1; i <= 4; i++)
          Container(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: const Color(0xff4C53A5),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Text(
                        '-50%',
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Icon(
                      Icons.favorite_border,
                      color: Colors.red,
                    )
                  ],
                ),
                InkWell(
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    child: Image.asset('assets/images/2.png'),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 3),
                  alignment: Alignment.center,
                  child: const Text(
                    'Product Title',
                    style: TextStyle(
                        fontSize: 18,
                        color: Color(0xff4C53A5),
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const Text(
                  'Write description of product',
                  style: TextStyle(fontSize: 13),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        '\$55',
                        style: TextStyle(fontSize: 15),
                      ),
                      Icon(
                        Icons.shopping_cart_checkout,
                        color: Color(0xff4C53A5),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
      ],
    );
  }
}
